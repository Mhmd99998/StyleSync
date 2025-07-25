﻿namespace backend.src.Domain.Entities;

public class Category
{
    public Guid CategoryId { get; set; }
    public string Name { get; set; } = string.Empty;

    public ICollection<ProductCategory> ProductCategories { get; set; } = null!;
}
