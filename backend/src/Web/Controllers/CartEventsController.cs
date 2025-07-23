using backend.src.Application.DTOs.CartEvent;
using backend.src.Application.Interfaces;
using backend.src.Domain.Entities;
using Microsoft.AspNetCore.Mvc;

namespace backend.src.Web.Controllers;

[ApiController]
[Route("api/cart-events")]
public class CartEventsController : ControllerBase
{
    private readonly ICartEventService _cartEventService;

    public CartEventsController(ICartEventService cartEventService)
    {
        _cartEventService = cartEventService;
    }

    [HttpPost]
    public async Task<IActionResult> CreateCartEvent([FromBody] CreateCartEventRequest request)
    {
        try
        {
            var cartEvent = new CartEvent
            {
                EventId = Guid.NewGuid(),
                UserId = request.UserId,
                VariantId = request.VariantId,
                Quantity = request.Quantity,
                CreatedAt = DateTime.UtcNow
            };

            await _cartEventService.CreateCartEventAsync(cartEvent);

            return Ok(new { message = "Cart event created successfully" });
        }
        catch (Exception ex)
        {
            // Log error if necessary
            return StatusCode(500, new { message = "An error occurred while creating the cart event", details = ex.Message });
        }
    }
}
