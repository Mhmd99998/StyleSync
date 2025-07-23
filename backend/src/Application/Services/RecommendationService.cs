using AutoMapper;
using backend.src.Application.DTOs.ProductVariant;
using backend.src.Application.Interfaces;
using backend.src.Domain.Entities;
using backend.src.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;
using System.Text.Json;

public class RecommendationService : IRecommendationService
{
    private readonly HttpClient _httpClient;
    private readonly ApplicationDbContext _dbContext;
    private readonly IMapper _mapper;

    public RecommendationService(HttpClient httpClient, ApplicationDbContext dbContext, IMapper mapper)
    {
        _httpClient = httpClient;
        _dbContext = dbContext;
        _mapper = mapper;
    }

    public async Task<List<ProductDto>> GetRecommendationsAsync(Guid userId, int count = 10)
    {
        var response = await _httpClient.GetAsync($"http://localhost:8000/recommend/{userId}?n={count}");

        if (!response.IsSuccessStatusCode)
        {
            return [];
        }

        var jsonString = await response.Content.ReadAsStringAsync();
        var payload = JsonSerializer.Deserialize<RecommendationResponse>(jsonString, new JsonSerializerOptions
        {
            PropertyNameCaseInsensitive = true
        });

        if (payload?.Recommendations == null || !payload.Recommendations.Any())
            return [];

        // Forward to helper method to convert variants → distinct products (+ fillers)
        return await GetRecommendedProductsAsync(payload.Recommendations);
    }

    public async Task<List<ProductDto>> GetBaseRecommendationsAsync(Guid productId, int count = 10)
    {
        var targetProduct = await _dbContext.Products
            .Include(p => p.ProductCategories)
            .Include(p => p.Variants)
                .ThenInclude(v => v.Images)
            .FirstOrDefaultAsync(p => p.ProductId == productId && !p.IsArchived);

        if (targetProduct == null)
            return [];

        var targetCategoryIds = targetProduct.ProductCategories.Select(pc => pc.CategoryId).ToList();

        var targetSizes = targetProduct.Variants.Select(v => v.Size.ToLowerInvariant()).Distinct().ToList();
        var targetColors = targetProduct.Variants.Select(v => v.Color.ToLowerInvariant()).Distinct().ToList();

        // Query similar products (not archived, not the original product)
        var candidates = await _dbContext.Products
            .Where(p => !p.IsArchived && p.ProductId != productId)
            .Include(p => p.ProductCategories)
                .ThenInclude(pc => pc.Category)
            .Include(p => p.Variants)
                .ThenInclude(v => v.Images)
            .ToListAsync();

        var scoredProducts = candidates
            .Select(p =>
            {
                var categoryScore = p.ProductCategories.Count(pc => targetCategoryIds.Contains(pc.CategoryId));

                var variantScores = p.Variants
                    .Where(v => v.Stock > 0)
                    .Select(v =>
                    {
                        var sizeMatch = targetSizes.Contains(v.Size.ToLowerInvariant()) ? 1 : 0;
                        var colorMatch = targetColors.Contains(v.Color.ToLowerInvariant()) ? 1 : 0;
                        return sizeMatch + colorMatch; // max 2 points per variant
                    });

                var variantScore = variantScores.Any() ? variantScores.Max() : 0;

                var totalScore = categoryScore * 10 + variantScore; // weighted: categories > variants

                return new
                {
                    Product = p,
                    Score = totalScore
                };
            })
            .Where(x => x.Score > 0)
            .OrderByDescending(x => x.Score)
            .Take(count)
            .Select(x => x.Product)
            .ToList();

        return _mapper.Map<List<ProductDto>>(scoredProducts);
    }

    public async Task<List<ProductDto>> GetRecommendedProductsAsync(List<Guid> variantIds)
    {
        // Step 1: Load variants with parent product and its categories via ProductCategories
        var variants = await _dbContext.ProductVariants
            .Include(v => v.Images)
            .Include(v => v.Product)
                .ThenInclude(p => p.ProductCategories)
                    .ThenInclude(pc => pc.Category)
            .Where(v => variantIds.Contains(v.VariantId))
            .ToListAsync();

        // Step 2: Group variants by parent product
        var productGroups = variants.GroupBy(v => v.Product.ProductId).ToList();
        var uniqueProducts = productGroups.Select(g => g.First().Product).ToList();

        var recommendedProducts = new List<Product>(uniqueProducts);

        // Step 3: Get distinct category IDs from these products
        var commonCategoryIds = uniqueProducts
            .SelectMany(p => p.ProductCategories)
            .Select(pc => pc.CategoryId)
            .Distinct()
            .ToList();

        // Step 4: Compute how many fillers we need
        int fillersNeeded = variantIds.Count - uniqueProducts.Count;

        if (fillersNeeded > 0)
        {
            // Step 5: Get filler products that share at least one category and aren't already included
            var fillerProducts = await _dbContext.Products
                .Include(p => p.ProductCategories)
                    .ThenInclude(pc => pc.Category)
                .Where(p =>
                    !recommendedProducts.Select(rp => rp.ProductId).Contains(p.ProductId) &&
                    p.ProductCategories.Any(pc => commonCategoryIds.Contains(pc.CategoryId)) &&
                    !p.IsArchived
                )
                .OrderBy(p => Guid.NewGuid()) // Randomize
                .Take(fillersNeeded)
                .ToListAsync();

            recommendedProducts.AddRange(fillerProducts);
        }

        return _mapper.Map<List<ProductDto>>(recommendedProducts);
    }

    private class RecommendationResponse
    {
        public Guid UserId { get; set; }
        public List<Guid> Recommendations { get; set; } = [];
    }
}
