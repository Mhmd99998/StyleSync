using backend.src.Application.DTOs.Image;

namespace backend.src.Application.DTOs.ProductVariant;

public record ProductVariantDto(
    Guid VariantId, 
    Guid ProductId, 
    string Size, 
    string Color, 
    decimal Price,
    decimal OnSale,
    int Stock,
    string? SKU,
    List<ImageDto> Images
);
