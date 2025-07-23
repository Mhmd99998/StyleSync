using backend.src.Application.DTOs.Product;

namespace backend.src.Application.Interfaces;

public interface IRecommendationService
{
    Task<List<ProductDto>> GetRecommendationsAsync(Guid userId, int count = 10);
    Task<List<ProductDto>> GetBaseRecommendationsAsync(Guid productId, int count = 10);
    Task<List<ProductDto>> GetRecommendedProductsAsync(List<Guid> variantIds);
}
