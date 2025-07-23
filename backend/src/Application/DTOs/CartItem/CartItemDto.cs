namespace backend.src.Application.DTOs.CartItem;

public class CartItemDto
{
    public CartItemDto() { }

    public Guid CartItemId { get; set; }
    public Guid VariantId { get; set; }
    public string VariantName { get; set; } = string.Empty!;
    public decimal Price { get; set; }
    public int Quantity { get; set; }
}
