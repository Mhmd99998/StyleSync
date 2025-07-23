using backend.src.Application.DTOs.Category;

namespace backend.src.Application.DTOs.ProductVariant;

public class UpdateProductVariantDto
{
    public string? Size { get; set; }
    public string? Color { get; set; }
    public decimal? Price { get; set; }
    public decimal? BoughtAt { get; set; }
    public decimal? OnSale { get; set; }
    public int? Stock { get; set; }
    public int? MinStock { get; set; }
    public string? SKU { get; set; }
}
