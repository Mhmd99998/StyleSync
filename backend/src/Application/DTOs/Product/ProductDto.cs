using backend.src.Application.DTOs.Category;
using backend.src.Application.DTOs.ProductVariant;
using backend.src.Domain.Entities;

public class ProductDto
{
    public Guid ProductId { get; set; }
    public string Name { get; set; }
    public string? Description { get; set; }
    public DateTime CreatedAt { get; set; }
    public string SKU { get; set; }
    public bool IsArchived { get; set; }
    public List<ProductVariantDto> Variants { get; set; } = [];
    public List<CategoryDto> Categories { get; set; } = [];

    public ProductDto() { }
}
