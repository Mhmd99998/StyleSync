using backend.src.Application.DTOs.OrderItem;
using backend.src.Domain.Entities;

namespace backend.src.Application.DTOs.Order;

public  class OrderDto
{
    public OrderDto() { }

    public Guid OrderId { get; set; }
    public Guid UserId { get; set; }
    public string PaymentIntentId { get; set; } = string.Empty;
    public string Status { get; set; } = string.Empty;
    public DateTime CreatedAt { get; set; }
    public string ShippingAddress { get; set; } = string.Empty;
    public List<OrderItemDto> Items { get; set; } = [];
}
