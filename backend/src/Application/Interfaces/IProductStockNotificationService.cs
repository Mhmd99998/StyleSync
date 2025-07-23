using backend.src.Application.DTOs.Notification;
using backend.src.Domain.Entities;

namespace backend.src.Application.Interfaces;

public interface IProductStockNotificationService
{
    Task<ProductStockNotification> CreateNotificationAsync(CreateNotificationDto createNotificationDto);
}
