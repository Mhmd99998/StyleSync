using AutoMapper;
using backend.src.Application.DTOs.WishlistItem;
using backend.src.Application.Interfaces;
using backend.src.Domain.Entities;
using backend.src.Domain.Exceptions;
using backend.src.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Application.Services;

public class WishlistService : IWishlistService
{
    private readonly ApplicationDbContext _context;
    private readonly IMapper _mapper;

    public WishlistService(ApplicationDbContext context, IMapper mapper)
    {
        _context = context;
        _mapper = mapper;
    }

    public async Task<IEnumerable<WishlistItemDto>> GetWishlistByUserAsync(Guid userId)
    {
        var wishlistItems = await _context.WishlistItems
            .Include(wi => wi.Product)
            .Where(wi => wi.UserId == userId)
            .ToListAsync();

        return _mapper.Map<IEnumerable<WishlistItemDto>>(wishlistItems);
    }

    public async Task<WishlistItemDto> AddItemToWishlistAsync(Guid userId, AddWishlistItemDto addItemDto)
    {
        var existingItem = await _context.WishlistItems
            .FirstOrDefaultAsync(wi => wi.UserId == userId && wi.ProductId == addItemDto.ProductId);

        if (existingItem != null)
        {
            throw new ConflictException("Item already exists in wishlist");
        }

        var wishlistItem = new WishlistItem
        {
            WishlistItemId = Guid.NewGuid(),
            UserId = userId,
            ProductId = addItemDto.ProductId,
            AddedAt = DateTime.UtcNow
        };

        _context.WishlistItems.Add(wishlistItem);
        await _context.SaveChangesAsync();

        return await GetWishlistItemDtoAsync(wishlistItem.WishlistItemId);
    }

    public async Task RemoveItemFromWishlistAsync(Guid userId, RemoveWishlistItemDto removeItemDto)
    {
        var wishlistItem = await _context.WishlistItems
            .FirstOrDefaultAsync(wi => wi.UserId == userId && wi.ProductId == removeItemDto.ProductId);

        if (wishlistItem != null)
        {
            _context.WishlistItems.Remove(wishlistItem);
            await _context.SaveChangesAsync();
        }
    }

    public async Task ClearWishlistAsync(Guid userId)
    {
        var wishlistItems = await _context.WishlistItems
            .Where(wi => wi.UserId == userId)
            .ToListAsync();

        _context.WishlistItems.RemoveRange(wishlistItems);
        await _context.SaveChangesAsync();
    }

    private async Task<WishlistItemDto> GetWishlistItemDtoAsync(Guid wishlistItemId)
    {
        var wishlistItem = await _context.WishlistItems
            .Include(wi => wi.Product)
            .FirstOrDefaultAsync(wi => wi.WishlistItemId == wishlistItemId)
            ?? throw new NotFoundException(nameof(WishlistItem), wishlistItemId);

        return _mapper.Map<WishlistItemDto>(wishlistItem);
    }
}