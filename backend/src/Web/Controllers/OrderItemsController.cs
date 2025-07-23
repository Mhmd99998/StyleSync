using backend.src.Application.DTOs.OrderItem;
using backend.src.Application.Interfaces;
using backend.src.Domain.Exceptions;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace backend.src.Web.Controllers;

[ApiController]
[Route("api/orders/{orderId}/items")]
public class OrderItemsController : ControllerBase
{
    private readonly IOrderItemService _orderItemService;

    public OrderItemsController(IOrderItemService orderItemService)
    {
        _orderItemService = orderItemService;
    }

    [HttpGet("{orderItemId}")]
    public async Task<IActionResult> GetOrderItem(Guid orderItemId)
    {
        try
        {
            var item = await _orderItemService.GetOrderItemByIdAsync(orderItemId);
            return Ok(item);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpPost]
    public async Task<IActionResult> AddOrderItem(Guid orderId, [FromBody] CreateOrderItemDto createOrderItemDto)
    {
        try
        {
            var createdItem = await _orderItemService.AddOrderItemAsync(orderId, createOrderItemDto);

            return CreatedAtAction(
                nameof(GetOrderItem),
                new { orderId = orderId, orderItemId = createdItem.OrderItemId },
                createdItem
            );
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
        catch (InsufficientStockException ex)
        {
            return BadRequest(ex.Message);
        }
    }

    [HttpPut("{orderItemId}")]
    public async Task<IActionResult> UpdateOrderItem(
        Guid orderItemId,
        [FromBody] UpdateOrderItemDto updateDto)
    {
        try
        {
            var item = await _orderItemService.UpdateOrderItemAsync(orderItemId, updateDto);
            return Ok(item);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
        catch (InsufficientStockException ex)
        {
            return BadRequest(ex.Message);
        }
    }

    [HttpDelete("{orderItemId}")]
    public async Task<IActionResult> DeleteOrderItem(Guid orderItemId)
    {
        try
        {
            await _orderItemService.DeleteOrderItemAsync(orderItemId);
            return NoContent();
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpPost("{orderItemId}/restock")]
    public async Task<IActionResult> RestockOrderItem(Guid orderItemId)
    {
        try
        {
            await _orderItemService.RestockOrderItemAsync(orderItemId);
            return NoContent();
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }
}