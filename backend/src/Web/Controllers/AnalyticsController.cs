using backend.src.Application.DTOs.Analytics;
using backend.src.Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace backend.src.Web.Controllers;

[ApiController]
[Route("api/[controller]")]
public class AnalyticsController : ControllerBase
{
    private readonly IAnalyticsService _analyticsService;

    public AnalyticsController(IAnalyticsService analyticsService)
    {
        _analyticsService = analyticsService;
    }

    [HttpGet("product-sales/{productId}")]
    public async Task<ActionResult<ProductSalesStatsDto>> GetProductSalesStats(Guid productId, [FromQuery] string period = "year")
    {
        try
        {
            var stats = await _analyticsService.GetProductSalesStatsAsync(productId, period);
            if (stats == null)
            {
                return NotFound($"No sales statistics found for product ID: {productId}");
            }
            return Ok(stats);
        }
        catch (ArgumentException ex)
        {
            return BadRequest(new { Message = ex.Message });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { Message = "An unexpected error occurred.", Details = ex.Message });
        }
    }

    [HttpGet("top-products")]
    public async Task<ActionResult<List<TopProductDto>>> GetTopSellingProducts([FromQuery] string period = "year", [FromQuery] int n = 10)
    {
        try
        {
            var topProducts = await _analyticsService.GetTopSellingProductsAsync(period, n);
            return Ok(topProducts);
        }
        catch (ArgumentException ex)
        {
            return BadRequest(new { Message = ex.Message });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { Message = "An unexpected error occurred.", Details = ex.Message });
        }
    }

    [HttpGet("monthly-revenue")]
    public async Task<ActionResult<List<MonthlyRevenueDto>>> GetMonthlyRevenue([FromQuery] string period = "year")
    {
        try
        {
            var revenue = await _analyticsService.GetMonthlyRevenueAsync(period);
            return Ok(revenue);
        }
        catch (ArgumentException ex)
        {
            return BadRequest(new { Message = ex.Message });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { Message = "An unexpected error occurred.", Details = ex.Message });
        }
    }

    [HttpGet("monthly-gp")]
    public async Task<ActionResult<List<MonthlyGrossProfitDto>>> GetMonthlyGrossProfit([FromQuery] string period = "year")
    {
        try
        {
            var gp = await _analyticsService.GetMonthlyGrossProfitAsync(period);
            return Ok(gp);
        }
        catch (ArgumentException ex)
        {
            return BadRequest(new { Message = ex.Message });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { Message = "An unexpected error occurred.", Details = ex.Message });
        }
    }

    [HttpPost("product-analytics")]
    public async Task<ActionResult<List<ProductAnalyticsGroupDto>>> GetProductAnalytics([FromBody] ProductAnalyticsRequest request)
    {
        try
        {
            var result = await _analyticsService.GetProductAnalyticsAsync(request.ProductIds, request.Period);
            return Ok(result);
        }
        catch (ArgumentException ex)
        {
            return BadRequest(new { Message = ex.Message });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { Message = "An unexpected error occurred.", Details = ex.Message });
        }
    }
}
