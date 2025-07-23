namespace backend.src.Application.DTOs.Category;

public class CreateProductCategoriesDto
{
    public Guid CategoryId { get; set; }
    public Guid ProductId { get; set; }
}
