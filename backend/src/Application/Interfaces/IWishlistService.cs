using backend.src.Application.DTOs.WishlistItem;

namespace backend.src.Application.Interfaces;

public interface IWishlistService
{
    Task<IEnumerable<WishlistItemDto>> GetWishlistByUserAsync(Guid userId);
    Task<WishlistItemDto> AddItemToWishlistAsync(Guid userId, AddWishlistItemDto addItemDto);
    Task RemoveItemFromWishlistAsync(Guid userId, RemoveWishlistItemDto removeItemDto);
    Task ClearWishlistAsync(Guid userId);
}