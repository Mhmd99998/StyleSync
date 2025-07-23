using backend.src.Application.DTOs.Category;
using backend.src.Application.Interfaces;
using backend.src.Domain.Exceptions;
using Microsoft.AspNetCore.Mvc;
using System.Linq.Expressions;

namespace backend.src.Web.Controllers;

[ApiController]
[Route("api/[controller]")]
public class CategoriesController : ControllerBase
{
    private readonly ICategoryService _categoryService;

    public CategoriesController(ICategoryService categoryService)
    {
        _categoryService = categoryService;
    }

    [HttpGet]
    public async Task<IActionResult> GetCategories()
    {
        var categories = await _categoryService.GetAllCategoriesAsync();
        return Ok(categories);
    }

    [HttpGet("{categoryId:guid}")]
    public async Task<IActionResult> GetCategory(Guid categoryId)
    {
        try
        {
            var category = await _categoryService.GetCategoryByIdAsync(categoryId);
            return Ok(category);
        }
        catch (Exception ex)
        {
            return NotFound(new { Message = ex.Message });
        }
    }

    [HttpGet("query")]
    public async Task<IActionResult> GetCategoryByName([FromQuery] string name)
    {
        if (string.IsNullOrWhiteSpace(name))
        {
            return BadRequest(new { Message = "Category name must not be empty." });
        }

        try
        {
            var category = await _categoryService.GetCategoryByNameAsync(name);
            return Ok(category);
        }
        catch (NotFoundException ex)
        {
            return NotFound(new { Message = ex.Message });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { Message = "An unexpected error occurred.", Details = ex.Message });
        }
    }

    [HttpPost]
    public async Task<IActionResult> CreateCategory([FromBody] CreateCategoryDto createCategoryDto)
    {
        var category = await _categoryService.CreateCategoryAsync(createCategoryDto);
        return Ok(category);
    }

    [HttpPost("product")]
    public async Task<IActionResult> CreateProductCategories([FromBody] CreateProductCategoriesDto createProductCategoriesDto)
    {
        var productCategory = await _categoryService
            .CreateProductCategoriesAsync(createProductCategoriesDto);
        return Ok(productCategory);
    }

    [HttpPut("{categoryId:guid}")]
    public async Task<IActionResult> UpdateCategory
        (Guid categoryId, [FromBody] UpdateCategoryDto updateCategoryDto)
    {
        try
        {
            var updatedCategory = await _categoryService
                .UpdateCategoryAsync(categoryId, updateCategoryDto);
            return Ok(updatedCategory);
        }
        catch (Exception ex)
        {
            return NotFound(new { Message = ex.Message });
        }
    }

    [HttpDelete("{categoryId:guid}")]
    public async Task<IActionResult> DeleteCategory(Guid categoryId)
    {
        try
        {
            await _categoryService.DeleteCategoryAsync(categoryId);
            return NoContent();
        }
        catch (Exception ex)
        {
            return NotFound(new { Message = ex.Message });
        }
    }

    [HttpGet("used")]
    public async Task<IActionResult> CategoryUsed([FromQuery] Guid categoryId)
    {
        try
        {
            var categoryUsed = await _categoryService.CategoryUsedAsync(categoryId);
            return Ok(categoryUsed);
        }   
        catch (Exception ex)
        {
            return NotFound(new { Message = ex.Message });
        }
    }
}
