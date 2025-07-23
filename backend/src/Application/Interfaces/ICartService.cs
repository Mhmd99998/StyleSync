using backend.src.Application.DTOs.Cart;
using backend.src.Application.DTOs.CartItem;

namespace backend.src.Application.Interfaces;

public interface ICartService
{
    Task<CartDto> GetCartByUserAsync(Guid userId);
    Task<CartItemDto> AddItemToCartAsync(Guid userId, AddCartItemDto addItemDto);
    Task<CartDto> CreateCartAsync(CreateCartDto createCartDto);
    Task<CartItemDto> UpdateCartItemAsync(Guid cartItemId, UpdateCartItemDto updateDto);
    Task RemoveItemFromCartAsync(Guid cartItemId);
    Task ClearCartAsync(Guid userId);
}
