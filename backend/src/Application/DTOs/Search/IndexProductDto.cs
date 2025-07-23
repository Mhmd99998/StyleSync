using backend.src.Application.DTOs.Category;

namespace backend.src.Application.DTOs.Search;

public class IndexProductDto
{
    public string Id { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public string SKU { get; set; }
    public bool IsArchived { get; set; }
    public List<IndexVariantDto> Variants { get; set; } = [];

    // Category IDs
    public List<string> Categories { get; set; } = [];
}
