using backend.src.Application.DTOs.Category;
using backend.src.Application.DTOs.ProductVariant;

namespace backend.src.Application.DTOs.Product;

public class UpdateProductDto
{
    public string? Name { get; set; }
    public string? Description { get; set; }
    public bool? IsArchived { get; set; }
    public string? SKU { get; set; }
    public ICollection<CategoryDto>? Categories { get; set; }
}
