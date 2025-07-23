using backend.src.Application.DTOs.Search;

namespace backend.src.Application.Interfaces;

public interface ISearchService
{
    public Task AddProductAsync(IndexProductDto product);
    public Task DeleteProductAsync(string productId);
    public Task AddVariantAsync(string productId, IndexVariantDto variant);
    public Task DeleteVariantAsync(string productId, string variantId);
    public Task<IndexProductDto?> GetProductByIdAsync(string productId);
    public Task<List<IndexProductDto>> SearchProductsAsync(string query);

}
