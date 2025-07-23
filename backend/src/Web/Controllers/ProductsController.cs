using backend.src.Application.DTOs.Product;
using backend.src.Application.Interfaces;
using backend.src.Domain.Exceptions;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace backend.src.Web.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ProductsController : ControllerBase
{
    private readonly IProductService _productService;

    public ProductsController(IProductService productService)
    {
        this._productService = productService;
    }

    [HttpGet]
    public async Task<IActionResult> GetAllProducts(
        [FromQuery] int pageNumber = 1,
        [FromQuery] int pageSize = 20,
        [FromQuery] ProductFilterDto? filters = null)
    {
        filters ??= new ProductFilterDto();

        var result = await _productService.GetPaginatedProductsAsync(pageNumber, pageSize, filters);
        return Ok(result);
    }

    [HttpGet("admin")]
    public async Task<IActionResult> GetAllAdminProducts(
    [FromQuery] int pageNumber = 1,
    [FromQuery] int pageSize = 20,
    [FromQuery] ProductFilterDto? filters = null)
    {
        filters ??= new ProductFilterDto();

        var result = await _productService.GetPaginatedProductsAdminAsync(pageNumber, pageSize, filters);
        return Ok(result);
    }

    [HttpGet("{productId}")]
    public async Task<IActionResult> GetProductById(Guid productId)
    {
        try
        {
            var product = await _productService.GetProductByIdAsync(productId);
            return Ok(product);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpGet("admin/{productId}")]
    public async Task<IActionResult> GetProductByIdAdmin(Guid productId)
    {
        try
        {
            var product = await _productService.GetProductByIdAdminAsync(productId);
            return Ok(product);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpGet("variant/{variantId}")]
    public async Task<IActionResult> GetProductByVariantId(Guid variantId)
    {
        try
        {
            var product = await _productService.GetProductByVariantIdAsync(variantId);
            return Ok(product);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }


    [HttpPost]
    public async Task<IActionResult> CreateProduct([FromBody] CreateProductDto createProductDto)
    {
        var role = HttpContext.Items["UserRole"]?.ToString();
        if (role != "admin")
        {
            return Unauthorized("User is not an admin");
        }

        var product = await _productService.CreateProductAsync(createProductDto);
        return CreatedAtAction(nameof(GetProductById), new { productId = product.ProductId }, product);
    }

    [HttpPut("{productId}")]
    public async Task<IActionResult> UpdateProduct(Guid productId, [FromBody] UpdateProductDto updateProductDto)
    {
        var role = HttpContext.Items["UserRole"]?.ToString();
        if (role != "admin")
        {
            return Unauthorized("User is not an admin");
        }

        try
        {
            var product = await _productService.UpdateProductAsync(productId, updateProductDto);
            return Ok(product);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpDelete("{productId}")]
    public async Task<IActionResult> DeleteProduct(Guid productId)
    {
        var role = HttpContext.Items["UserRole"]?.ToString();
        if (role != "admin")
        {
            return Unauthorized("User is not an admin");
        }

        try
        {
            await _productService.DeleteProductAsync(productId);
            return NoContent();
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpGet("search")]
    public async Task<IActionResult> Search([FromQuery] string query)
    {
        try
        {
            var products = await _productService.SearchAsync(query);
            return Ok(products);
        }   
        catch (Exception ex)
        {
            return NotFound(ex.Message);
        }
    }
}
