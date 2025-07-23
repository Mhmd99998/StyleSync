namespace backend.src.Application.DTOs.Product;

public class PaginatedProductDto
{
    public int TotalProducts { get; set; }
    public IEnumerable<ProductDto> Products { get; set; } = [];
}