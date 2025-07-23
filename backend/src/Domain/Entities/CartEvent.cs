namespace backend.src.Domain.Entities;

public class CartEvent
{
    public Guid EventId { get; set; }
    public Guid UserId { get; set; }
    public Guid VariantId { get; set; }
    public int Quantity { get; set; }
    public DateTime CreatedAt { get; set; }

    public User User { get; set; } = null!;
    public ProductVariant Variant { get; set; } = null!;
}
