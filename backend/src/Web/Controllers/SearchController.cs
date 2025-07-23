namespace backend.src.Web.Controllers;
using backend.src.Application.DTOs.Search;
using backend.src.Application.Services;
using backend.src.Infrastructure.Data;
using Microsoft.AspNetCore.Mvc;

[ApiController]
[Route("api/[controller]")]
public class SearchController : ControllerBase
{
    private readonly SearchService _searchService;
    private readonly ApplicationDbContext _context;

    public SearchController(ApplicationDbContext context)
    {
        _context = context;
        _searchService = new SearchService(_context);
    }

    [HttpPost("product")]
    public async Task<IActionResult> AddProduct([FromBody] IndexProductDto product)
    {
        await _searchService.AddProductAsync(product);
        return Ok("Product indexed");
    }

    [HttpDelete("product/{id}")]
    public async Task<IActionResult> DeleteProduct(string id)
    {
        await _searchService.DeleteProductAsync(id);
        return Ok("Product deleted from index");
    }

    [HttpPost("product/{id}/variant")]
    public async Task<IActionResult> AddVariant(string id, [FromBody] IndexVariantDto variant)
    {
        await _searchService.AddVariantAsync(id, variant);
        return Ok("Variant added");
    }

    [HttpDelete("product/{id}/variant/{variantId}")]
    public async Task<IActionResult> DeleteVariant(string id, string variantId)
    {
        await _searchService.DeleteVariantAsync(id, variantId);
        return Ok("Variant deleted");
    }

    [HttpGet("product/{id}")]
    public async Task<IActionResult> GetProductById(string id)
    {
        var product = await _searchService.GetProductByIdAsync(id);
        if (product == null)
            return NotFound();
        return Ok(product);
    }

    [HttpGet]
    public async Task<IActionResult> SearchProducts([FromQuery] string q)
    {
        var results = await _searchService.SearchProductsAsync(q);
        return Ok(results);
    }
}

