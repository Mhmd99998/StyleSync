using backend.src.Application.DTOs.Category;

namespace backend.src.Application.Interfaces;

public interface ICategoryService
{
    public Task<IEnumerable<CategoryDto>> GetAllCategoriesAsync();
    public Task<CategoryDto> GetCategoryByIdAsync(Guid categoryId);
    public Task<CategoryDto> GetCategoryByNameAsync(string name);
    public Task<CategoryDto> CreateCategoryAsync(CreateCategoryDto createCategoryDto);
    public Task<ProductCategoriesDto> CreateProductCategoriesAsync
        (CreateProductCategoriesDto createProductCategoriesDto);
    public Task<CategoryDto> UpdateCategoryAsync(Guid categoryId, UpdateCategoryDto updateCategoryDto);
    public Task DeleteCategoryAsync(Guid categoryId);
    public Task<bool> CategoryUsedAsync(Guid categoryId);

}
