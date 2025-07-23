using backend.src.Application.DTOs.Order;

namespace backend.src.Application.Interfaces;

public interface IOrderService
{
    Task<IEnumerable<OrderDto>> GetAllOrdersAsync();
    Task<OrderDto> GetOrderByIdAsync(Guid orderId);
    Task<IEnumerable<OrderDto>> GetOrdersByUserAsync(Guid userId);
    Task<OrderDto> CreateOrderAsync(CreateOrderDto createOrderDto);
    Task<OrderDto> UpdateOrderStatusAsync(Guid orderId, UpdateOrderStatusDto updateDto);
    Task CancelOrderAsync(Guid orderId);
}
