using backend.src.Application.DTOs.OrderItem;

namespace backend.src.Application.Interfaces;

public interface IOrderItemService
{
    Task<OrderItemDto> GetOrderItemByIdAsync(Guid orderItemId);
    Task<OrderItemDto> AddOrderItemAsync(Guid orderId, CreateOrderItemDto createDto);
    Task<OrderItemDto> UpdateOrderItemAsync(Guid orderItemId, UpdateOrderItemDto updateDto);
    Task DeleteOrderItemAsync(Guid orderItemId);
    Task RestockOrderItemAsync(Guid orderItemId);
}
