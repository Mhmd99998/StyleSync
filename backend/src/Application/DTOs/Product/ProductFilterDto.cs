namespace backend.src.Application.DTOs.Product;

public class ProductFilterDto
{
    public string? SearchTerm { get; set; }
    public List<string>? CategoryIds { get; set; }
    public decimal? MinPrice { get; set; }
    public decimal? MaxPrice { get; set; }

    public List<string>? Sizes { get; set; }
    public List<string>? Colors { get; set; }

    public string? SortBy { get; set; } 
    public string? SortOrder { get; set; }
    public bool? IsArchived { get; set; }
}
