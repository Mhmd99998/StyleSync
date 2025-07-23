using backend.src.Application.DTOs.OrderItem;
using backend.src.Domain.Entities;

namespace backend.src.Application.DTOs.Order;

public class CreateOrderDto
{
    public CreateOrderDto() { }

    public Guid UserId { get; set; }
    public string PaymentIntentId { get; set; }
    public string ShippingAddress { get; set; }
    public string? Status { get; set; }
}
