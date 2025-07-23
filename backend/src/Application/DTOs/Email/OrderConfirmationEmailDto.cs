namespace backend.src.Application.DTOs.Email;

public class OrderConfirmationEmailDto
{
    public string Email { get; set; } = string.Empty;
    public string OrderId { get; set; } = string.Empty;
    public DateTime OrderDate { get; set; }
}
