using backend.src.Application.DTOs.Image;

namespace backend.src.Application.DTOs.ProductVariant;

public record AdminProductVariantDto(
        Guid VariantId,
    Guid ProductId,
    string Size,
    string Color,
    decimal Price,
    decimal BoughtAt,
    decimal? OnSale,
    int Stock,
    int MinStock,
    string? SKU,
    List<ImageDto> Images
);
