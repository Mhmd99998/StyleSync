namespace backend.src.Application.DTOs.Search;

public class IndexVariantDto
{
    public string Id { get; set; }
    public string Sku { get; set; }
    public string Size { get; set; }
    public string Color { get; set; }
    public decimal Price { get; set; }
    public int Stock { get; set; }
}
