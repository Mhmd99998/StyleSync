using backend.src.Application.DTOs.Image;
using backend.src.Application.Interfaces;
using backend.src.Application.Services;
using backend.src.Domain.Exceptions;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace backend.src.Web.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ImagesController : ControllerBase
{
    private readonly IImageService _imageService;

    public ImagesController(IImageService imageService)
    {
        this._imageService = imageService;
    }

    [HttpGet("{imageId}")]
    public async Task<IActionResult> GetImageById(Guid imageId)
    {
        try
        {
            var image = await _imageService.GetImageByIdAsync(imageId);
            return Ok(image);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpGet("variant/{variantId}")]
    public async Task<IActionResult> GetImagesByVariant(Guid variantId)
    {
        var images = await _imageService.GetImagesByVariantAsync(variantId);
        return Ok(images);
    }

    [HttpPost]
    public async Task<IActionResult> CreateImage([FromBody] CreateImageDto createDto)
    {
        var role = HttpContext.Items["UserRole"]?.ToString();
        if (role != "admin")
        {
            return Unauthorized("User is not an admin");
        }

        var image = await _imageService.CreateImageAsync(createDto);
        return CreatedAtAction(nameof(GetImageById), new { imageId = image.ImageId }, image);
    }

    [HttpPut("{imageId}")]
    public async Task<IActionResult> UpdateImage(Guid imageId, [FromBody] UpdateImageDto updateDto)
    {
        try
        {
            var image = await _imageService.UpdateImageAsync(imageId, updateDto);
            return Ok(image);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpDelete("{imageId}")]
    public async Task<IActionResult> DeleteImage(Guid imageId)
    {
        var role = HttpContext.Items["UserRole"]?.ToString();
        if (role != "admin")
        {
            return Unauthorized("User is not an admin");
        }

        try
        {
            await _imageService.DeleteImageAsync(imageId);
            return NoContent();
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpPut("{variantId}/set-default/{imageId}")]
    public async Task<IActionResult> SetDefaultImage(Guid variantId, Guid imageId)
    {
        var role = HttpContext.Items["UserRole"]?.ToString();
        if (role != "admin")
        {
            return Unauthorized("User is not an admin");
        }

        try
        {
            await _imageService.SetDefaultImageAsync(variantId, imageId);
            return NoContent();
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpDelete("bulk")]
    public async Task<IActionResult> DeleteImages([FromBody] IEnumerable<Guid> imageIds)
    {
        var role = HttpContext.Items["UserRole"]?.ToString();
        if (role != "admin")
        {
            return Unauthorized("User is not an admin");
        }

        try
        {
            await _imageService.DeleteImagesAsync(imageIds);
            return NoContent();
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
        catch (Exception ex)
        {
            return StatusCode(500, ex.Message); 
        }
    }
}
