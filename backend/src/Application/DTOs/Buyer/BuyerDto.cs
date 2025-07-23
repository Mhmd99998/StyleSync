namespace backend.src.Application.DTOs.Buyer;

public class BuyerDto
{
    public Guid BuyerId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string? Location { get; set; }
    public string? Email { get; set; }
    public string? PhoneNumber { get; set; }
    public decimal Balance { get; set; }
    public DateTime CreatedAt { get; set; }
}
