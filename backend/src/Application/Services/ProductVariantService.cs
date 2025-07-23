using AutoMapper;
using backend.src.Application.DTOs.ProductVariant;
using backend.src.Application.DTOs.Search;
using backend.src.Application.Interfaces;
using backend.src.Domain.Entities;
using backend.src.Domain.Exceptions;
using backend.src.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Application.Services;

public class ProductVariantService : IProductVariantService
{
    private readonly ApplicationDbContext _context;
    public readonly S3Service _s3Service;
    private readonly IMapper _mapper;
    private readonly ISearchService _searchService;

    public ProductVariantService(ApplicationDbContext context, S3Service s3Service, IMapper mapper, ISearchService searchService)
    {
        this._context = context;
        this._s3Service = s3Service;
        this._mapper = mapper;
        this._searchService = searchService;
    }

    public async Task<IEnumerable<ProductVariantDto>> GetAllVariantsAsync()
    {
        var variants = await this._context.ProductVariants
            .Include(v => v.Product)
            .ToListAsync();

        return this._mapper.Map<IEnumerable<ProductVariantDto>>(variants);
    }

    public async Task<ProductVariantDto> GetVariantByIdAsync(Guid variantId)
    {
        var variant = await this._context.ProductVariants
            .Include(v => v.Product)
            .Include(v => v.Images)
            .FirstOrDefaultAsync(v => v.VariantId == variantId)
            ?? throw new NotFoundException(nameof(ProductVariant), variantId);

        return this._mapper.Map<ProductVariantDto>(variant);
    }

    public async Task<IEnumerable<ProductVariantDto>> GetVariantsByProductAsync(Guid productId)
    { 
        var variants = await this._context.ProductVariants
            .Include(v => v.Product)
            .Where(v => v.ProductId == productId)
            .ToListAsync();

        return this._mapper.Map<IEnumerable<ProductVariantDto>>(variants);
    }

    public async Task<ProductVariantDto> CreateVariantAsync(CreateProductVariantDto createProductVariantDto)
    {
        var productExists = await _context.Products
            .AnyAsync(p => p.ProductId == createProductVariantDto.ProductId);

        if (!productExists)
        {
            throw new NotFoundException(nameof(Product), createProductVariantDto.ProductId);
        }

        var variant = _mapper.Map<ProductVariant>(createProductVariantDto);
        variant.VariantId = Guid.NewGuid();

        _context.ProductVariants.Add(variant);
        await _context.SaveChangesAsync();

        await ReindexProductAsync(variant.ProductId);

        await UploadVariantImagesAsync(variant.VariantId, createProductVariantDto.Images);

        return await GetVariantByIdAsync(variant.VariantId);
    }

    public async Task<ProductVariantDto> UpdateVariantAsync(Guid variantId, UpdateProductVariantDto updateVariantDto)
    {
        var variant = await this._context.ProductVariants
            .FirstOrDefaultAsync(v => v.VariantId == variantId)
            ?? throw new NotFoundException(nameof(ProductVariant), variantId);

        this._mapper.Map(updateVariantDto, variant);
        await this._context.SaveChangesAsync();

        await ReindexProductAsync(variant.ProductId);

        return await GetVariantByIdAsync(variantId);
    }

    public async Task DeleteVariantAsync(Guid variantId)
    {
        var variant = await this._context.ProductVariants
            .FirstOrDefaultAsync(v => v.VariantId == variantId)
            ?? throw new NotFoundException(nameof(ProductVariant), variantId);

        var productId = variant.ProductId;

        this._context.ProductVariants.Remove(variant);
        await this._context.SaveChangesAsync();

        await ReindexProductAsync(productId);
    }

    public async Task<bool> ColorUsedAsync(string color)
    {
        if (string.IsNullOrWhiteSpace(color))
            throw new ArgumentException("Color must not be empty.", nameof(color));

        var isUsed = await _context.ProductVariants
            .AnyAsync(v => v.Color.ToLower() == color.ToLower());

        return isUsed;
    }

    private async Task ReindexProductAsync(Guid productId)
    {
        var product = await _context.Products
            .Include(p => p.Variants)
            .Include(p => p.ProductCategories)
                .ThenInclude(pc => pc.Category)
            .FirstOrDefaultAsync(p => p.ProductId == productId)
            ?? throw new NotFoundException(nameof(Product), productId);

        var indexDto = _mapper.Map<IndexProductDto>(product);
        await _searchService.AddProductAsync(indexDto);
    }

    private async Task UploadVariantImagesAsync(Guid variantId, IEnumerable<IFormFile> images)
    {
        if (images == null || !images.Any())
            return;

        var uploadedImages = new List<Image>();

        foreach (var image in images)
        {
            if (image.Length > 0)
            {
                using var stream = image.OpenReadStream();
                string fileName = $"{variantId}/{Guid.NewGuid()}{Path.GetExtension(image.FileName)}";
                string contentType = image.ContentType;

                // Upload to S3
                string imageUrl = await _s3Service.UploadFileAsync(stream, fileName, contentType);

                uploadedImages.Add(new Image
                {
                    ImageId = Guid.NewGuid(),
                    VariantId = variantId,
                    ImageUrl = imageUrl,
                    IsDefault = uploadedImages.Count == 0 // First image is default
                });
            }
        }

        _context.Images.AddRange(uploadedImages);
        await _context.SaveChangesAsync();
    }
}
