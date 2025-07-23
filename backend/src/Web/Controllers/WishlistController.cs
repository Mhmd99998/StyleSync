using backend.src.Application.DTOs.WishlistItem;
using backend.src.Application.Interfaces;
using backend.src.Domain.Exceptions;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace backend.src.Web.Controllers;

[ApiController]
[Route("api/users/{userId}/wishlist")]
public class WishlistController : ControllerBase
{
    private readonly IWishlistService _wishlistService;

    public WishlistController(IWishlistService wishlistService)
    {
        _wishlistService = wishlistService;
    }

    [HttpGet]
    public async Task<IActionResult> GetWishlist(Guid userId)
    {
        var wishlist = await _wishlistService.GetWishlistByUserAsync(userId);
        return Ok(wishlist);
    }

    [HttpPost("items")]
    public async Task<IActionResult> AddItem(Guid userId, [FromBody] AddWishlistItemDto addItemDto)
    {
        try
        {
            var item = await _wishlistService.AddItemToWishlistAsync(userId, addItemDto);
            return CreatedAtAction(nameof(GetWishlist), new { userId }, item);
        }
        catch (ConflictException ex)
        {
            return Conflict(ex.Message);
        }
    }

    [HttpDelete("items")]
    public async Task<IActionResult> RemoveItem(Guid userId, [FromBody] RemoveWishlistItemDto removeItemDto)
    {
        try
        {
            await _wishlistService.RemoveItemFromWishlistAsync(userId, removeItemDto);
            return NoContent();
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpDelete]
    public async Task<IActionResult> ClearWishlist(Guid userId)
    {
        await _wishlistService.ClearWishlistAsync(userId);
        return NoContent();
    }
}