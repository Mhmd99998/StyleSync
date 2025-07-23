using backend.src.Application.DTOs.CartItem;

namespace backend.src.Application.DTOs.Cart;

public class CartDto
{
    public CartDto() {}

    public Guid CartId { get; set; }
    public Guid UserId { get; set; } 
    public DateTime CreatedAt { get; set; }
    public List<CartItemDto> Items { get; set; } = [];
}
