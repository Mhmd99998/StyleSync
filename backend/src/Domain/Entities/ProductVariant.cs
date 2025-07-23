namespace backend.src.Domain.Entities;

public class ProductVariant
{
    public Guid VariantId { get; set; }
    public Guid ProductId { get; set; }
    public string Size { get; set; } = string.Empty;
    public string Color { get; set; } = string.Empty;
    public decimal Price { get; set; }
    public decimal OnSale { get; set; }
    public decimal BoughtAt { get; set; }
    public int Stock { get; set; }
    public int MinStock { get; set; }
    public string SKU { get; set; } = string.Empty;

    public Product Product { get; set; } = null!;
    public ICollection<Image> Images { get; set; } = [];
    public ICollection<ProductStockNotification> StockNotifications { get; set; } = [];
}
