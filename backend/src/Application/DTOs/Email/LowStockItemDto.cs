namespace backend.src.Application.DTOs.Email;

public class LowStockItemDto
{
    public string ProductName { get; set; }
    public Guid VariantId { get; set; }
    public string Size { get; set; }
    public string Color { get; set; }
    public int Stock { get; set; }
    public int MinStock { get; set; }
    public string Sku { get; set; }
}
