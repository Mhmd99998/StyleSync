namespace backend.src.Domain.Entities;

public class ProductStockNotification
{
    public Guid NotificationId { get; set; }
    public Guid VariantId { get; set; }
    public string UserEmail { get; set; } = string.Empty;
    public bool Notified { get; set; }
    public DateTime CreatedAt { get; set; }

    public ProductVariant Variant { get; set; } = null!;
}
