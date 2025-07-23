using backend.src.Application.DTOs.Category;
using backend.src.Application.DTOs.ProductVariant;

namespace backend.src.Application.DTOs.Product;

public class AdminProductDto
{
    public Guid ProductId { get; set; }
    public string Name { get; set; }
    public string? Description { get; set; }
    public DateTime CreatedAt { get; set; }
    public string SKU { get; set; }
    public bool IsArchived { get; set; }
    public List<AdminProductVariantDto> Variants { get; set; } = [];
    public List<CategoryDto> Categories { get; set; } = [];

    public AdminProductDto() { }
}
