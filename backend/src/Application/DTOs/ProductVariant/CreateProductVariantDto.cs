using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;

namespace backend.src.Application.DTOs.ProductVariant;

public class CreateProductVariantDto
{
    [ValidateNever]
    public Guid ProductId { get; set; }
    public string Size { get; set; } = string.Empty;
    public string Color { get; set; } = string.Empty;
    public decimal Price { get; set; }
    public decimal BoughtAt { get; set; }
    public decimal? OnSale { get; set; }
    public int Stock { get; set; }
    public int MinStock { get; set; }
    public string? SKU { get; set; }
    public List<IFormFile> Images { get; set; } = [];
}
