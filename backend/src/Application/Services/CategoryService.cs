using AutoMapper;
using backend.src.Application.DTOs.Category;
using backend.src.Application.Interfaces;
using backend.src.Domain.Entities;
using backend.src.Domain.Exceptions;
using backend.src.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;
using System.Reflection.Metadata.Ecma335;

namespace backend.src.Application.Services;

public class CategoryService : ICategoryService
{
    private readonly ApplicationDbContext _context;    
    private readonly IMapper _mapper;

    public CategoryService(ApplicationDbContext context, IMapper mapper)
    {
        _context = context;
        _mapper = mapper;
    }

    public async Task<IEnumerable<CategoryDto>> GetAllCategoriesAsync()
    {
        var categories = await _context.Categories.ToListAsync();
        return _mapper.Map<IEnumerable<CategoryDto>>(categories);
    }

    public async Task<CategoryDto> GetCategoryByIdAsync(Guid categoryId)
    {
        var category = await _context.Categories.FindAsync(categoryId);
        return _mapper.Map<CategoryDto>(category);
    }

    public async Task<CategoryDto> GetCategoryByNameAsync(string name)
    {
        if (string.IsNullOrWhiteSpace(name))
            throw new ArgumentException("Category name must not be empty.", nameof(name));

        var category = await _context.Categories
            .Where(c => c.Name.ToLower() == name.ToLower())
            .FirstOrDefaultAsync()
            ?? throw new NotFoundException(nameof(Category), name);

        return _mapper.Map<CategoryDto>(category);
    }

    public async Task<CategoryDto> CreateCategoryAsync(CreateCategoryDto createCategoryDto)
    {
        var category = _mapper.Map<Category>(createCategoryDto);

        category.CategoryId = Guid.NewGuid();
        await _context.Categories.AddAsync(category);

        await _context.SaveChangesAsync();
        return _mapper.Map<CategoryDto>(category);
    }

    public async Task<ProductCategoriesDto> CreateProductCategoriesAsync
        (CreateProductCategoriesDto createProductCategoriesDto)
    {
        var exists = await _context.ProductCategories
            .AnyAsync(pc => pc.ProductId == createProductCategoriesDto.ProductId 
            && pc.CategoryId == createProductCategoriesDto.CategoryId);

        if (exists)
        {
            throw new ConflictException("Product categories record already exists");
        }

        var productCategory = _mapper.Map<ProductCategory>(createProductCategoriesDto);
        await _context.ProductCategories.AddAsync(productCategory);
        await _context.SaveChangesAsync();

        return _mapper.Map<ProductCategoriesDto>(productCategory);
    }

    public async Task<CategoryDto> UpdateCategoryAsync(Guid categoryId, UpdateCategoryDto updateCategoryDto)
    {
        var category = await _context.Categories.FindAsync(categoryId)
            ?? throw new NotFoundException(nameof(Category), categoryId);

        _mapper.Map(updateCategoryDto, category);

        await _context.SaveChangesAsync();
        return _mapper.Map<CategoryDto>(category); 
    }

    public async Task DeleteCategoryAsync(Guid categoryId)
    {
        var category = await _context.Categories.FindAsync(categoryId)
            ?? throw new NotFoundException(nameof(Category), categoryId);

        _context.Categories.Remove(category);
        await _context.SaveChangesAsync();
    }

    public async Task<bool> CategoryUsedAsync(Guid categoryId)
    {
        var isUsed = await _context.ProductCategories
            .AnyAsync(pc => pc.CategoryId == categoryId);

        if (isUsed) return true;

        return false;
    }
}
