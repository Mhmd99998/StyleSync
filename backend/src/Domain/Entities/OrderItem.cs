namespace backend.src.Domain.Entities;

public class OrderItem
{
    public Guid OrderItemId { get; set; }
    public Guid OrderId { get; set; }
    public Guid VariantId { get; set; }
    public int Quantity { get; set; }
    public decimal PriceAtPurchase { get; set; }

    public Order Order { get; set; } = null!;

    public ProductVariant Variant { get; set; } = null!;
}
