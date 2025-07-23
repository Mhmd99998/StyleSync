using backend.src.Application.DTOs.Cart;
using backend.src.Application.DTOs.CartItem;
using backend.src.Application.Interfaces;
using backend.src.Domain.Exceptions;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace backend.src.Web.Controllers;

[ApiController]
[Route("api/users/{userId}/cart")]
public class CartsController : ControllerBase
{
    private readonly ICartService _cartService;

    public CartsController(ICartService cartService)
    {
        _cartService = cartService;
    }

    [HttpGet]
    public async Task<IActionResult> GetCart(Guid userId)
    {
        try
        {
            var cart = await _cartService.GetCartByUserAsync(userId);
            return Ok(cart);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpPost]
    public async Task<IActionResult> CreateCart([FromBody] CreateCartDto createCartDto)
    {
        try
        {
            var cart = await _cartService.CreateCartAsync(createCartDto);
            return Ok(cart);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpPost("items")]
    public async Task<IActionResult> AddItem(Guid userId, [FromBody] AddCartItemDto addItemDto)
    {
        try
        {
            var item = await _cartService.AddItemToCartAsync(userId, addItemDto);
            return CreatedAtAction(nameof(GetCart), new { userId }, item);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpPut("items/{cartItemId}")]
    public async Task<IActionResult> UpdateItem(Guid cartItemId, [FromBody] UpdateCartItemDto updateDto)
    {
        try
        {
            var item = await _cartService.UpdateCartItemAsync(cartItemId, updateDto);
            return Ok(item);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpDelete("items/{cartItemId}")]
    public async Task<IActionResult> RemoveItem(Guid cartItemId)
    {
        try
        {
            await _cartService.RemoveItemFromCartAsync(cartItemId);
            return NoContent();
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpDelete]
    public async Task<IActionResult> ClearCart(Guid userId)
    {
        try
        {
            await _cartService.ClearCartAsync(userId);
            return NoContent();
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }
}