namespace backend.src.Application.DTOs.Email;

public class OrderStatusUpdateEmailDto
{
    public string Email { get; set; } = string.Empty;
    public string OrderId { get; set; } = string.Empty;
    public string NewStatus { get; set; } = string.Empty;
}
