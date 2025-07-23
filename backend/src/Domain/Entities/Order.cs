namespace backend.src.Domain.Entities;

public class Order
{
    public Guid OrderId { get; set; }
    public Guid UserId { get; set; }
    public string PaymentIntentId { get; set; } = null!;
    public string Status { get; set; } = string.Empty;
    public DateTime CreatedAt { get; set; }
    public string ShippingAddress { get; set; } = string.Empty;
    public User User { get; set; } = null!;

    public ICollection<OrderItem> OrderItems { get; set; } = [];
}
