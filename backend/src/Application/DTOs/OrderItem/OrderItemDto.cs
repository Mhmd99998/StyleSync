namespace backend.src.Application.DTOs.OrderItem;

public class OrderItemDto
{
    public OrderItemDto() { }

    public Guid OrderItemId { get; set; }
    public Guid VariantId { get; set; }
    public string VariantName { get; set; } = string.Empty;
    public int Quantity { get; set; }
    public decimal PriceAtPurchase { get; set; }
}
