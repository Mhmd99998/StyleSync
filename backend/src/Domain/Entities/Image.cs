namespace backend.src.Domain.Entities;

public class Image
{
    public Guid ImageId { get; set; }
    public Guid VariantId { get; set; }
    public string ImageUrl { get; set; } = string.Empty;
    public bool IsDefault { get; set; }

    public ProductVariant Variant { get; set; } = null!;
}
