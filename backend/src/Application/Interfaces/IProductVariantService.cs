using backend.src.Application.DTOs.ProductVariant;

namespace backend.src.Application.Interfaces;

public interface IProductVariantService
{
    Task<IEnumerable<ProductVariantDto>> GetAllVariantsAsync();
    Task<ProductVariantDto> GetVariantByIdAsync(Guid variantId);
    Task<IEnumerable<ProductVariantDto>> GetVariantsByProductAsync(Guid productId);
    Task<ProductVariantDto> CreateVariantAsync(CreateProductVariantDto createProductVariantDto);
    Task<ProductVariantDto> UpdateVariantAsync(Guid variantId, UpdateProductVariantDto updateProductVariantDto);
    Task DeleteVariantAsync(Guid variantId);
    Task<bool> ColorUsedAsync(string color);
}
