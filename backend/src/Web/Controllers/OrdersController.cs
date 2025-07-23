using backend.src.Application.DTOs.Order;
using backend.src.Application.Interfaces;
using backend.src.Domain.Exceptions;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace backend.src.Web.Controllers;

[ApiController]
[Route("api/[controller]")]
public class OrdersController : ControllerBase
{
    private readonly IOrderService _orderService;

    public OrdersController(IOrderService orderService)
    {
        _orderService = orderService;
    }

    public async Task<IActionResult> GetAllOrders()
    {
        try
        {
            var orders = await _orderService.GetAllOrdersAsync();
            return Ok(orders);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }


    [HttpGet("{orderId}")]
    public async Task<IActionResult> GetOrderById(Guid orderId)
    {
        try
        {
            var order = await _orderService.GetOrderByIdAsync(orderId);
            return Ok(order);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpGet("user/{userId}")]
    public async Task<IActionResult> GetOrdersByUser(Guid userId)
    {
        var orders = await _orderService.GetOrdersByUserAsync(userId);
        return Ok(orders);
    }

    [HttpPost]
    public async Task<IActionResult> CreateOrder([FromBody] CreateOrderDto createDto)
    {
        try
        {
            var order = await _orderService.CreateOrderAsync(createDto);
            return CreatedAtAction(nameof(GetOrderById), new { orderId = order.OrderId }, order);
        }
        catch (InsufficientStockException ex)
        {
            return BadRequest(ex.Message);
        }
    }

    [HttpPut("{orderId}/status")]
    public async Task<IActionResult> UpdateOrderStatus(Guid orderId, [FromBody] UpdateOrderStatusDto updateDto)
    {
        try
        {
            var order = await _orderService.UpdateOrderStatusAsync(orderId, updateDto);
            return Ok(order);
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }

    [HttpDelete("{orderId}")]
    public async Task<IActionResult> CancelOrder(Guid orderId)
    {
        try
        {
            await _orderService.CancelOrderAsync(orderId);
            return NoContent();
        }
        catch (NotFoundException ex)
        {
            return NotFound(ex.Message);
        }
    }
}
