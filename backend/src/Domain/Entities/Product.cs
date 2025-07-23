namespace backend.src.Domain.Entities;

public class Product
{
    public Guid ProductId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string? Description { get; set; }
    public DateTime CreatedAt { get; set; }
    public string SKU { get; set; } = string.Empty;
    public bool IsArchived { get; set; }

    public ICollection<ProductVariant> Variants { get; set; } = [];
    public ICollection<ProductCategory> ProductCategories { get; set; } = [];
}
