using backend.src.Application.DTOs.Category;

namespace backend.src.Application.DTOs.Product;

public class CreateProductDto
{
    public string Name { get; set; } = string.Empty;
    public string? Description { get; set; }
    public string SKU { get; set; } = string.Empty;
    public bool IsArchived { get; set; } = false;
    public ICollection<CategoryDto> Categories { get; set; } = [];
}

