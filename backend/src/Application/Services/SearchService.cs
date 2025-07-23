namespace backend.src.Application.Services;

using backend.src.Application.DTOs.Search;
using backend.src.Application.Interfaces;
using backend.src.Infrastructure.Data;
using Elasticsearch.Net;
using Microsoft.EntityFrameworkCore;
using Nest;
using System.Linq;
using System.Text.Json;

public class SearchService : ISearchService
{
    private readonly IElasticClient _elasticClient;
    private const string IndexName = "products";
    private readonly ApplicationDbContext _context;

    public SearchService(ApplicationDbContext context)
    {
        _context = context;

        var settings = new ConnectionSettings(new Uri("https://localhost:9200"))
            .DefaultIndex(IndexName)
            .BasicAuthentication("elastic", "e3CTlTqs=x6K1TAkrYzN")
            .ServerCertificateValidationCallback(CertificateValidations.AllowAll);

        _elasticClient = new ElasticClient(settings);
    }

    public async Task AddProductAsync(IndexProductDto product)
    {
        try
        {
            Console.WriteLine("[AddProductAsync] Indexing product: " + JsonSerializer.Serialize(product));
            var response = await _elasticClient.IndexAsync(product, i => i
                .Index(IndexName)
                .Id(product.Id.ToString()));

            if (!response.IsValid)
            {
                throw new Exception($"Elasticsearch AddProduct failed: {response.ServerError?.Error?.Reason ?? "Unknown reason"}");
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"[AddProductAsync] Error: {ex.Message}");
            throw;
        }
    }

    public async Task DeleteProductAsync(string productId)
    {
        try
        {
            var response = await _elasticClient.DeleteAsync<IndexProductDto>(productId, d => d.Index(IndexName));

            if (!response.IsValid)
            {
                throw new Exception($"Elasticsearch DeleteProduct failed: {response.ServerError?.Error?.Reason ?? "Unknown reason"}");
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"[DeleteProductAsync] Error: {ex.Message}");
            throw;
        }
    }

    public async Task AddVariantAsync(string productId, IndexVariantDto variant)
    {
        try
        {
            var getResponse = await _elasticClient.GetAsync<IndexProductDto>(productId, g => g.Index(IndexName));
            if (!getResponse.Found)
                throw new Exception("Product not found in Elasticsearch");

            var product = getResponse.Source;
            product.Variants.Add(variant);

            var updateResponse = await _elasticClient.IndexAsync(product, i => i
                .Index(IndexName)
                .Id(productId));

            if (!updateResponse.IsValid)
            {
                throw new Exception($"Failed to update product with new variant: {updateResponse.ServerError?.Error?.Reason ?? "Unknown reason"}");
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"[AddVariantAsync] Error: {ex.Message}");
            throw;
        }
    }

    public async Task DeleteVariantAsync(string productId, string variantId)
    {
        try
        {
            var getResponse = await _elasticClient.GetAsync<IndexProductDto>(productId, g => g.Index(IndexName));
            if (!getResponse.Found)
                throw new Exception("Product not found in Elasticsearch");

            var product = getResponse.Source;
            product.Variants.RemoveAll(v => v.Id == variantId);

            var updateResponse = await _elasticClient.IndexAsync(product, i => i
                .Index(IndexName)
                .Id(productId));

            if (!updateResponse.IsValid)
            {
                throw new Exception($"Failed to update product after variant deletion: {updateResponse.ServerError?.Error?.Reason ?? "Unknown reason"}");
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"[DeleteVariantAsync] Error: {ex.Message}");
            throw;
        }
    }

    public async Task<IndexProductDto?> GetProductByIdAsync(string productId)
    {
        try
        {
            var response = await _elasticClient.GetAsync<IndexProductDto>(productId, g => g.Index(IndexName));

            if (!response.IsValid)
            {
                throw new Exception($"Elasticsearch GetProductById failed: {response.ServerError?.Error?.Reason ?? "Unknown reason"}");
            }

            return response.Found ? response.Source : null;
        }
        catch (Exception ex)
        {
            Console.WriteLine($"[GetProductByIdAsync] Error: {ex.Message}");
            throw;
        }
    }

    public async Task<List<IndexProductDto>> SearchProductsAsync(string query)
    {
        var response = await _elasticClient.SearchAsync<IndexProductDto>(s => s
            .Index(IndexName)
            .Query(q => q
                .Bool(b => b
                    .MustNot(mn => mn.Term(t => t.Field(f => f.IsArchived).Value(true)))
                    .Should(
                        sh => sh.Prefix(p => p
                            .Field(f => f.Name)
                            .Value(query.ToLower())
                        ),
                        sh => sh.Prefix(p => p
                            .Field(f => f.Description)
                            .Value(query.ToLower())
                        )
                    )
                )
            )
        );

        if (!response.IsValid)
        {
            throw new Exception($"Elasticsearch search failed: {response.ServerError?.Error?.Reason ?? "Unknown error"}");
        }

        var results = response.Documents.ToList();

        await AllProductsExistAsync(results); 

        return results;
    }

    private async Task<bool> AllProductsExistAsync(List<IndexProductDto> searchResults)
    {
        // Convert string IDs to Guid
        var searchGuids = searchResults
            .Select(p => Guid.Parse(p.Id))
            .ToList();

        var existingIds = await _context.Products
            .Where(p => searchGuids.Contains(p.ProductId))
            .Select(p => p.ProductId)
            .ToListAsync();

        return searchGuids.All(id => existingIds.Contains(id));
    }
}
