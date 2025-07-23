namespace backend.src.Application.DTOs.Product;

public class AdminPaginatedProductDto
{
    public int TotalProducts { get; set; }
    public IEnumerable<AdminProductDto> Products { get; set; } = [];
}
