using AutoMapper;
using backend.src.Application.DTOs.Image;
using backend.src.Application.Interfaces;
using backend.src.Domain.Entities;
using backend.src.Domain.Exceptions;
using backend.src.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Application.Services;

public class ImageService : IImageService
{
    private readonly ApplicationDbContext _context;
    private readonly IMapper _mapper;

    public ImageService(ApplicationDbContext context, IMapper mapper)
    {
        this._context = context;
        this._mapper = mapper;
    }

    public async Task<ImageDto> GetImageByIdAsync(Guid imageId)
    {
        var image = await this._context.Images
            .Include(i => i.Variant)
            .FirstOrDefaultAsync(i => i.ImageId == imageId)
            ?? throw new NotFoundException(nameof(Image), imageId);

        return this._mapper.Map<ImageDto>(image);
    }

    public async Task<IEnumerable<ImageDto>> GetImagesByVariantAsync(Guid variantId)
    {
        var images = await this._context.Images
            .Include(i => i.Variant)
            .Where(i => i.VariantId == variantId)
            .ToListAsync();

        return this._mapper.Map<IEnumerable<ImageDto>>(images);
    }

    public async Task<ImageDto> CreateImageAsync(CreateImageDto createImageDto)
    {
        var variantExists = await this._context.ProductVariants
            .FindAsync(createImageDto.VariantId)
            ?? throw new NotFoundException(nameof(ProductVariant), createImageDto.VariantId);

        var image = this._mapper.Map<Image>(createImageDto);
        image.ImageId = Guid.NewGuid();

        // Handle default image setting
        if (createImageDto.IsDefault)
        {
            await ClearExistingDefaultImages(createImageDto.VariantId);
        }

        this._context.Images.Add(image);
        await this._context.SaveChangesAsync();

        return this._mapper.Map<ImageDto>(image);
    }
    public async Task<ImageDto> UpdateImageAsync(Guid imageId, UpdateImageDto updateImageDto)
    {
        var image = await this._context.Images
            .FirstOrDefaultAsync(i => i.ImageId == imageId)
            ?? throw new NotFoundException(nameof(Image), imageId);

        // Handle default image setting
        if (updateImageDto.IsDefault.HasValue && updateImageDto.IsDefault.Value)
        {
            await ClearExistingDefaultImages(image.VariantId);
        }

        this._mapper.Map(updateImageDto, image);
        await this._context.SaveChangesAsync();

        return await GetImageByIdAsync(imageId);
    }

    public async Task DeleteImageAsync(Guid imageId)
    {
        var image = await this._context.Images
            .FirstOrDefaultAsync(i => i.ImageId == imageId)
            ?? throw new NotFoundException(nameof(Image), imageId);

        this._context.Images.Remove(image);
        await this._context.SaveChangesAsync();

        // If deleted image was default, set new default
        if (image.IsDefault)
        {
            var newDefault = await this._context.Images
                .FirstOrDefaultAsync(i => i.VariantId == image.VariantId);

            if (newDefault != null)
            {
                newDefault.IsDefault = true;
                await this._context.SaveChangesAsync();
            }
        }
    }
    public async Task SetDefaultImageAsync(Guid variantId, Guid imageId)
    {
        var image = await this._context.Images
            .FirstOrDefaultAsync(i => i.ImageId == imageId && i.VariantId == variantId)
            ?? throw new NotFoundException(nameof(Image), imageId);

        await ClearExistingDefaultImages(variantId);
        image.IsDefault = true;
        await this._context.SaveChangesAsync();
    }

    private async Task ClearExistingDefaultImages(Guid variantId)
    {
        var existingDefaults = await this._context.Images
            .Where(i => i.VariantId == variantId && i.IsDefault)
            .ToListAsync();

        foreach (var img in existingDefaults)
        {
            img.IsDefault = false;
        }
    }

    public async Task DeleteImagesAsync(IEnumerable<Guid> imageIds)
    {
        using var transaction = await this._context.Database.BeginTransactionAsync(); // Start a new transaction

        try
        {
            foreach (var imageId in imageIds)
            {
                var image = await this._context.Images
                    .FirstOrDefaultAsync(i => i.ImageId == imageId)
                    ?? throw new NotFoundException(nameof(Image), imageId);

                this._context.Images.Remove(image); // Mark the image for deletion
            }

            // Commit the transaction if all images are successfully marked for deletion
            await this._context.SaveChangesAsync();
            await transaction.CommitAsync(); // Commit the transaction to the database

            // Handle default image deletion
            foreach (var imageId in imageIds)
            {
                var image = await this._context.Images
                    .FirstOrDefaultAsync(i => i.ImageId == imageId);

                // If deleted image was default, set new default
                if (image?.IsDefault == true)
                {
                    var newDefault = await this._context.Images
                        .FirstOrDefaultAsync(i => i.VariantId == image.VariantId);

                    if (newDefault != null)
                    {
                        newDefault.IsDefault = true;
                        await this._context.SaveChangesAsync();
                    }
                }
            }
        }
        catch (Exception)
        {
            // In case of an error, rollback the transaction
            await transaction.RollbackAsync();
            throw; // Re-throw the error after rolling back
        }
    }
}
