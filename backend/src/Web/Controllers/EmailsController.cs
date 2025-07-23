using backend.src.Application.DTOs.Email;
using backend.src.Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace backend.src.Web.Controllers;

[ApiController]
[Route("api/[controller]")]
public class EmailsController : ControllerBase
{
    private readonly IEmailService _emailService;

    public EmailsController(IEmailService emailService)
    {
        _emailService = emailService;
    }

    [HttpPost("order-confirmation")]
    public async Task<IActionResult> SendOrderConfirmation([FromBody] OrderConfirmationEmailDto dto)
    {
        await _emailService.SendOrderConfirmationAsync(dto);
        return Ok(new { message = "Order confirmation email sent." });
    }

    [HttpPost("order-status-update")]
    public async Task<IActionResult> SendOrderStatusUpdate([FromBody] OrderStatusUpdateEmailDto dto)
    {
        await _emailService.SendOrderStatusUpdateAsync(dto);
        return Ok(new { message = "Order status update email sent." });
    }

    [HttpPost("low-stock-alert")]
    public async Task<IActionResult> SendLowStockAlert([FromBody] LowStockAlertEmailDto dto)
    {
        await _emailService.SendLowStockAlertAsync(dto);
        return Ok(new { message = "Low stock alert email sent." });
    }
}
