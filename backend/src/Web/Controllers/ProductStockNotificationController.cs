using backend.src.Application.DTOs.Notification;
using backend.src.Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace backend.src.Web.Controllers;

[ApiController]
[Route("api/notifications")]
public class ProductStockNotificationController: ControllerBase
{
    private readonly IProductStockNotificationService _notificationService;

    public ProductStockNotificationController(IProductStockNotificationService notificationService)
    {
        _notificationService = notificationService;
    }

    [HttpPost]
    public async Task<IActionResult> Create([FromBody] CreateNotificationDto createNotificationDto)
    {
        if (createNotificationDto == null)
        {
            return BadRequest("Notification data is required.");
        }

        if (string.IsNullOrWhiteSpace(createNotificationDto.UserEmail))
        {
            return BadRequest("User email is required.");
        }

        try
        {
            var notification = await _notificationService.CreateNotificationAsync(createNotificationDto);
            return Ok(notification);
        }
        catch (ArgumentException ex)
        {
            // Handle validation or business logic errors
            return BadRequest(ex.Message);
        }
        catch (Exception ex)
        {
            // Handle unexpected errors
            return StatusCode(500, "Internal server error: " + ex.Message);
        }
    }

}
