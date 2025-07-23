using backend.src.Application.DTOs.ProductVariant;
using backend.src.Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

[ApiController]
[Route("api/recommend")]
public class RecommendationsController : ControllerBase
{
    private readonly IRecommendationService _recommendationService;

    public RecommendationsController(IRecommendationService recommendationService)
    {
        _recommendationService = recommendationService;
    }

    [HttpGet("{userId}")]
    public async Task<ActionResult<List<ProductDto>>> GetRecommendations(Guid userId, [FromQuery] int n = 10)
    {
        try
        {
            var result = await _recommendationService.GetRecommendationsAsync(userId, n);
            return Ok(result);
        }
        catch(Exception ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpGet("base/{productId}")]
    public async Task<ActionResult<List<ProductDto>>> GetBaseRecommendations(Guid productId, [FromQuery] int n = 10)
    {
        try
        {
            var result = await _recommendationService.GetBaseRecommendationsAsync(productId, n);
            return Ok(result);
        }
        catch(Exception ex)
        {
            return NotFound(ex.Message);
        }
    }
}
