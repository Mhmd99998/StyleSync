using backend.src.Application.DTOs.Product;

namespace backend.src.Application.Interfaces;

public interface IProductService
{
    Task<IEnumerable<ProductDto>> GetAllProductsAsync();
    Task<PaginatedProductDto> GetPaginatedProductsAsync(int pageNumber, int pageSize, ProductFilterDto filters);
    Task<AdminPaginatedProductDto> GetPaginatedProductsAdminAsync(int pageNumber, int pageSize, ProductFilterDto filters);
    Task<ProductDto> GetProductByIdAsync(Guid productId);
    Task<AdminProductDto> GetProductByIdAdminAsync(Guid productId);
    Task<ProductDto> GetProductByVariantIdAsync(Guid variantId);
    Task<ProductDto> CreateProductAsync(CreateProductDto createProductDto);
    Task<ProductDto> UpdateProductAsync(Guid productId, UpdateProductDto updateProductDto);
    Task DeleteProductAsync(Guid productId);
    Task<IEnumerable<ProductDto>> SearchAsync(string query);
}
