using AutoMapper;
using backend.src.Application.DTOs.Category;
using backend.src.Application.DTOs.Image;
using backend.src.Application.DTOs.Product;
using backend.src.Application.DTOs.ProductVariant;
using backend.src.Application.DTOs.Search;
using backend.src.Application.Interfaces;
using backend.src.Domain.Entities;
using backend.src.Domain.Exceptions;
using backend.src.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Application.Services;

public class ProductService : IProductService
{
    private readonly ApplicationDbContext _context;
    private readonly IMapper _mapper;
    private readonly ISearchService _searchService;
    private readonly ICategoryService _categoryService;

    public ProductService(
        ApplicationDbContext context, 
        IMapper mapper, 
        ISearchService searchService,
        ICategoryService categoryService
        )
    {
        this._context = context;
        this._mapper = mapper;
        this._searchService = searchService;
        this._categoryService = categoryService;
    }

    public async Task<IEnumerable<ProductDto>> GetAllProductsAsync()
    {
        var products = await this._context.Products
            .Include(p => p.Variants)
            .ThenInclude(v => v.Images)
            .Include(p => p.ProductCategories)
            .ThenInclude(pc => pc.Category)
            .ToListAsync();

        return this._mapper.Map<IEnumerable<ProductDto>>(products);
    }

    public async Task<PaginatedProductDto> GetPaginatedProductsAsync(
        int pageNumber = 1,
        int pageSize = 20,
        ProductFilterDto? filters = null)
    {
        var productsQuery = _context.Products
            .AsQueryable();

        if (filters != null)
        {
            if (!string.IsNullOrWhiteSpace(filters.SearchTerm))
            {
                productsQuery = productsQuery.Where(p =>
                    EF.Functions.ILike(p.Name, $"%{filters.SearchTerm}%") ||
                    EF.Functions.ILike(p.Description, $"%{filters.SearchTerm}%"));
            }

            // Filter by category
            if (filters.CategoryIds is { Count: > 0 })
            {
                var parsedCategoryGuids = filters.CategoryIds
                    .SelectMany(id => id.Split(',', StringSplitOptions.RemoveEmptyEntries))
                    .Select(idStr => Guid.TryParse(idStr.Trim(), out var guid) ? guid : (Guid?)null)
                    .Where(g => g.HasValue)
                    .Select(g => g.Value)
                    .ToList();

                if (parsedCategoryGuids.Count > 0)
                {
                    productsQuery = productsQuery.Where(p =>
                        parsedCategoryGuids.All(catId =>
                            p.ProductCategories.Any(pc => pc.CategoryId == catId)));
                }
            }

            // Price range filter
            if (filters.MinPrice.HasValue)
            {
                productsQuery = productsQuery.Where(p =>
                    p.Variants.Any(v => v.Price >= filters.MinPrice));
            }

            if (filters.MaxPrice.HasValue)
            {
                productsQuery = productsQuery.Where(p =>
                    p.Variants.Any(v => v.Price <= filters.MaxPrice));
            }

            // Filtering by isArchived field
            if (filters.IsArchived.HasValue)
            {
                productsQuery = productsQuery.Where(p => p.IsArchived == filters.IsArchived.Value);
            }

            // Filter by sizes
            if (filters.Sizes is { Count: > 0 })
            {
                productsQuery = productsQuery.Where(p =>
                    p.Variants.Any(v => filters.Sizes.Contains(v.Size)));
            }

            // Filter by colors
            if (filters.Colors is { Count: > 0 })
            {
                productsQuery = productsQuery.Where(p =>
                    p.Variants.Any(v => filters.Colors.Contains(v.Color)));
            }

            // Sorting
            if (!string.IsNullOrWhiteSpace(filters.SortBy))
            {
                var ascending = filters.SortOrder?.ToLower() != "desc";

                productsQuery = filters.SortBy.ToLower() switch
                {
                    "price" => ascending
                        ? productsQuery.OrderBy(p => p.Variants.Min(v => v.Price))
                        : productsQuery.OrderByDescending(p => p.Variants.Max(v => v.Price)),
                    "name" => ascending
                        ? productsQuery.OrderBy(p => p.Name)
                        : productsQuery.OrderByDescending(p => p.Name),
                    "date" or "created" => ascending
                        ? productsQuery.OrderBy(p => p.CreatedAt)
                        : productsQuery.OrderByDescending(p => p.CreatedAt),
                    _ => productsQuery
                };
            }
        }

        // Count total products matching the filters
        var totalProducts = await productsQuery.CountAsync();

        // Apply paging and projection early to avoid unnecessary loading
        var productsDto = await productsQuery
            .Skip((pageNumber - 1) * pageSize)
            .Take(pageSize)
            .Select(p => new ProductDto
            {
                ProductId = p.ProductId,
                Name = p.Name,
                Description = p.Description,
                CreatedAt = p.CreatedAt,
                IsArchived = p.IsArchived,
                SKU = p.SKU,
                Variants = p.Variants.Select(v => new ProductVariantDto(
                    v.VariantId,
                    p.ProductId,
                    v.Size,
                    v.Color,
                    v.Price,
                    v.OnSale,
                    v.Stock,
                    v.SKU,
                    v.Images.Select(img => new ImageDto(
                        img.ImageId,
                        v.VariantId,
                        img.ImageUrl,
                        img.IsDefault
                    )).ToList()
                )).ToList()
            })
            .ToListAsync();

        // Return the paginated DTO result
        return new PaginatedProductDto
        {
            TotalProducts = totalProducts,
            Products = productsDto
        };
    }

    public async Task<AdminPaginatedProductDto> GetPaginatedProductsAdminAsync(
    int pageNumber = 1,
    int pageSize = 20,
    ProductFilterDto? filters = null)
    {
        var productsQuery = _context.Products
            .AsQueryable();

        if (filters != null)
        {
            if (!string.IsNullOrWhiteSpace(filters.SearchTerm))
            {
                productsQuery = productsQuery.Where(p =>
                    EF.Functions.ILike(p.Name, $"%{filters.SearchTerm}%") ||
                    EF.Functions.ILike(p.Description, $"%{filters.SearchTerm}%"));
            }

            // Filter by category
            if (filters.CategoryIds is { Count: > 0 })
            {
                var parsedCategoryGuids = filters.CategoryIds
                    .SelectMany(id => id.Split(',', StringSplitOptions.RemoveEmptyEntries))
                    .Select(idStr => Guid.TryParse(idStr.Trim(), out var guid) ? guid : (Guid?)null)
                    .Where(g => g.HasValue)
                    .Select(g => g.Value)
                    .ToList();

                if (parsedCategoryGuids.Count > 0)
                {
                    productsQuery = productsQuery.Where(p =>
                        parsedCategoryGuids.All(catId =>
                            p.ProductCategories.Any(pc => pc.CategoryId == catId)));
                }
            }

            // Price range filter
            if (filters.MinPrice.HasValue)
            {
                productsQuery = productsQuery.Where(p =>
                    p.Variants.Any(v => v.Price >= filters.MinPrice));
            }

            if (filters.MaxPrice.HasValue)
            {
                productsQuery = productsQuery.Where(p =>
                    p.Variants.Any(v => v.Price <= filters.MaxPrice));
            }

            // Filtering by isArchived field
            if (filters.IsArchived.HasValue)
            {
                productsQuery = productsQuery.Where(p => p.IsArchived == filters.IsArchived.Value);
            }

            // Filter by sizes
            if (filters.Sizes is { Count: > 0 })
            {
                productsQuery = productsQuery.Where(p =>
                    p.Variants.Any(v => filters.Sizes.Contains(v.Size)));
            }

            // Filter by colors
            if (filters.Colors is { Count: > 0 })
            {
                productsQuery = productsQuery.Where(p =>
                    p.Variants.Any(v => filters.Colors.Contains(v.Color)));
            }

            // Sorting
            if (!string.IsNullOrWhiteSpace(filters.SortBy))
            {
                var ascending = filters.SortOrder?.ToLower() != "desc";

                productsQuery = filters.SortBy.ToLower() switch
                {
                    "price" => ascending
                        ? productsQuery.OrderBy(p => p.Variants.Min(v => v.Price))
                        : productsQuery.OrderByDescending(p => p.Variants.Max(v => v.Price)),
                    "name" => ascending
                        ? productsQuery.OrderBy(p => p.Name)
                        : productsQuery.OrderByDescending(p => p.Name),
                    "date" or "created" => ascending
                        ? productsQuery.OrderBy(p => p.CreatedAt)
                        : productsQuery.OrderByDescending(p => p.CreatedAt),
                    _ => productsQuery
                };
            }
        }

        // Count total products matching the filters
        var totalProducts = await productsQuery.CountAsync();

        // Apply paging and projection early to avoid unnecessary loading
        var productsDto = await productsQuery
            .Skip((pageNumber - 1) * pageSize)
            .Take(pageSize)
            .Select(p => new AdminProductDto
            {
                ProductId = p.ProductId,
                Name = p.Name,
                Description = p.Description,
                CreatedAt = p.CreatedAt,
                IsArchived = p.IsArchived,
                SKU = p.SKU,
                Variants = p.Variants.Select(v => new AdminProductVariantDto(
                    v.VariantId,
                    p.ProductId,
                    v.Size,
                    v.Color,
                    v.Price,
                    v.BoughtAt,
                    v.OnSale,
                    v.Stock,
                    v.MinStock,
                    v.SKU,
                    v.Images.Select(img => new ImageDto(
                        img.ImageId,
                        v.VariantId,
                        img.ImageUrl,
                        img.IsDefault
                    )).ToList()
                )).ToList()
            })
            .ToListAsync();

        // Return the paginated DTO result
        return new AdminPaginatedProductDto
        {
            TotalProducts = totalProducts,
            Products = productsDto
        };
    }

    public async Task<ProductDto> GetProductByIdAsync(Guid productId)
    {
        var product = await this._context.Products
            .Include(p => p.Variants)
                .ThenInclude(v => v.Images)
            .Include(p =>p.ProductCategories)
                .ThenInclude(pc => pc.Category)
                .FirstOrDefaultAsync(p => p.ProductId == productId)
            ?? throw new NotFoundException(nameof(Product), productId);

        return this._mapper.Map<ProductDto>(product);
    }

    public async Task<AdminProductDto> GetProductByIdAdminAsync(Guid productId)
    {
        var product = await this._context.Products
            .Include(p => p.Variants)
                .ThenInclude(v => v.Images)
            .Include(p => p.ProductCategories)
                .ThenInclude(pc => pc.Category)
                .FirstOrDefaultAsync(p => p.ProductId == productId)
            ?? throw new NotFoundException(nameof(Product), productId);

        return this._mapper.Map<AdminProductDto>(product);
    }

    public async Task<ProductDto> GetProductByVariantIdAsync(Guid variantId)
    {
        var product = await this._context.Products
            .Include(p => p.Variants)
                .ThenInclude(v => v.Images)
            .Include(p => p.ProductCategories)
                .ThenInclude(pc => pc.Category)
            .FirstOrDefaultAsync(p => p.Variants.Any(v => v.VariantId == variantId))
            ?? throw new NotFoundException(nameof(Product), variantId);

        return this._mapper.Map<ProductDto>(product);
    }

    public async Task<ProductDto> CreateProductAsync(CreateProductDto createProductDto)
    {
        var skuExists = await _context.Products.AnyAsync(p => p.SKU == createProductDto.SKU);
        if (skuExists)
        {
            throw new ConflictException("SKU already exists");
        }

        // Map and initialize new product
        var product = this._mapper.Map<Product>(createProductDto);
        product.ProductId = Guid.NewGuid();
        product.CreatedAt = DateTime.UtcNow;
        product.IsArchived = createProductDto.IsArchived;
        product.SKU = createProductDto.SKU;
        Console.WriteLine($"MAPPED: {product.IsArchived}");
        // Save to database
        this._context.Products.Add(product);
        await this._context.SaveChangesAsync();

        // Link product to categories
        foreach (var categoryDto in createProductDto.Categories)
        {
            var createProductCategoryDto = new CreateProductCategoriesDto
            {
                ProductId = product.ProductId,
                CategoryId = categoryDto.CategoryId
            };

            await _categoryService.CreateProductCategoriesAsync(createProductCategoryDto);
        }

        // Reload product with category relationships for indexing
        var updatedProduct = await _context.Products
            .Include(p => p.ProductCategories)
            .ThenInclude(pc => pc.Category)
            .FirstOrDefaultAsync(p => p.ProductId == product.ProductId);

        // Map and index to Elasticsearch
        var indexDto = this._mapper.Map<IndexProductDto>(updatedProduct);
        await this._searchService.AddProductAsync(indexDto);

        // Return the final mapped product DTO
        return this._mapper.Map<ProductDto>(updatedProduct);
    }

    public async Task<ProductDto> UpdateProductAsync(Guid productId, UpdateProductDto updateProductDto)
    {
        var product = await _context.Products
            .Include(p => p.ProductCategories)
            .Include(p => p.Variants)
            .FirstOrDefaultAsync(p => p.ProductId == productId)
            ?? throw new NotFoundException(nameof(Product), productId);

        product.Name = updateProductDto.Name ?? product.Name;
        product.Description = updateProductDto.Description ?? product.Description;
        product.SKU = updateProductDto.SKU ?? product.SKU;
        product.IsArchived = updateProductDto.IsArchived ?? product.IsArchived;

        // Update categories
        if (updateProductDto.Categories != null)
        {
            var newCategoryIds = updateProductDto.Categories.Select(c => c.CategoryId).ToHashSet();

            // Remove old ones
            var toRemove = product.ProductCategories
                .Where(pc => !newCategoryIds.Contains(pc.CategoryId))
                .ToList();
            foreach (var pc in toRemove)
            {
                product.ProductCategories.Remove(pc);
            }

            // Add new ones
            foreach (var newCategoryId in newCategoryIds)
            {
                if (!product.ProductCategories.Any(pc => pc.CategoryId == newCategoryId))
                {
                    product.ProductCategories.Add(new ProductCategory
                    {
                        ProductId = productId,
                        CategoryId = newCategoryId
                    });
                }
            }
        }

        await _context.SaveChangesAsync();

        var indexDto = _mapper.Map<IndexProductDto>(product);
        await _searchService.AddProductAsync(indexDto);

        return _mapper.Map<ProductDto>(product);
    }

    public async Task DeleteProductAsync(Guid productId)
    {
        var product = await this._context.Products.FindAsync(productId)
            ?? throw new NotFoundException(nameof(Product), productId);

        this._context.Products.Remove(product);
        await this._context.SaveChangesAsync();

        await _searchService.DeleteProductAsync(productId.ToString());
    }
    public async Task<IEnumerable<ProductDto>> SearchAsync(string query)
    {
        if (string.IsNullOrWhiteSpace(query))
            return [];

        var normalizedQuery = query.Trim();

        var products = await _context.Products
            .Include(p => p.Variants)
                .ThenInclude(v => v.Images)
            .Include(p => p.ProductCategories)
                .ThenInclude(pc => pc.Category)
            .Where(p =>
                EF.Functions.ILike(p.Name, $"%{normalizedQuery}%") ||
                (p.Description != null && EF.Functions.ILike(p.Description, $"%{normalizedQuery}%"))
            )
            .Select(p => new
            {
                Product = p,
                RelevanceScore =
                    (EF.Functions.ILike(p.Name, $"%{normalizedQuery}%") ? 2 : 0) +
                    (p.Description != null && EF.Functions.ILike(p.Description, $"%{normalizedQuery}%") ? 1 : 0)
            })
            .OrderByDescending(x => x.RelevanceScore)
            .ThenBy(x => x.Product.Name)
            .Select(x => x.Product)
            .ToListAsync();

        return _mapper.Map<IEnumerable<ProductDto>>(products);
    }
}
