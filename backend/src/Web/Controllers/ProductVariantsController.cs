using AutoMapper;
using backend.src.Application.DTOs.ProductVariant;
using backend.src.Application.Interfaces;
using backend.src.Domain.Exceptions;
using Microsoft.AspNetCore.Mvc;

namespace backend.src.Web.Controllers;

[ApiController]
[Route("api/variants")]
public class ProductVariantsController : ControllerBase
{
    private readonly IProductVariantService _variantService;

    public ProductVariantsController(IProductVariantService variantService, IMapper mapper, ISearchService searchService)
    {
        this._variantService = variantService;
    }

    [HttpGet]
    public async Task<IActionResult> GetAllVariants()
    {
        var variants = await this._variantService.GetAllVariantsAsync();
        return Ok(variants);
    }

    [HttpGet("{variantId}")]
    public async Task<IActionResult> GetVariantById(Guid variantId)
    {
        try
        {
            var variant = await this._variantService.GetVariantByIdAsync(variantId);
            return Ok(variant);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpGet("product/{productId}")]
    public async Task<IActionResult> GetVariantsByProduct(Guid productId)
    {
        var variants = await this._variantService.GetVariantsByProductAsync(productId);
        return Ok(variants);
    }

    [HttpPost]
    public async Task<IActionResult> CreateVariant([FromBody] CreateProductVariantDto createDto)
    {
        var role = HttpContext.Items["UserRole"]?.ToString();
        if (role != "admin")
        {
            return Unauthorized("User is not an admin");
        }

        var variant = await this._variantService.CreateVariantAsync(createDto);
        return CreatedAtAction(nameof(GetVariantById), new { variantId = variant.VariantId }, variant);
    }

    [HttpPut("{variantId}")]
    public async Task<IActionResult> UpdateVariant(Guid variantId, [FromBody] UpdateProductVariantDto updateDto)
    {
        var role = HttpContext.Items["UserRole"]?.ToString();
        if (role != "admin")
        {
            return Unauthorized("User is not an admin");
        }

        try
        {
            var variant = await this._variantService.UpdateVariantAsync(variantId, updateDto);
            return Ok(variant);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
        catch (ConflictException ex)
        {
            return Conflict(ex.Message);
        }
    }

    [HttpDelete("{variantId}")]
    public async Task<IActionResult> DeleteVariant(Guid variantId)
    {
        var role = HttpContext.Items["UserRole"]?.ToString();
        if (role != "admin")
        {
            return Unauthorized("User is not an admin");
        }

        try
        {
            await this._variantService.DeleteVariantAsync(variantId);
            return NoContent();
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpGet("used")]
    public async Task<IActionResult> ColorUsed([FromQuery] string color)
    {
        try
        {
            var colorUsed = await _variantService.ColorUsedAsync(color);
            return Ok(colorUsed);
        } 
        catch(Exception ex)
        {
            return NotFound(new { Message = ex.Message });
        }
    }
}
