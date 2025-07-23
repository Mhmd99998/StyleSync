using backend.src.Application.DTOs.Notification;
using backend.src.Application.Interfaces;
using backend.src.Domain.Entities;
using backend.src.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;
using System;

namespace backend.src.Application.Services;

public class ProductStockNotificationService : IProductStockNotificationService
{
    private readonly ApplicationDbContext _context;

    public ProductStockNotificationService(ApplicationDbContext context)
    {
        _context = context;
    }

    public async Task<ProductStockNotification> CreateNotificationAsync(CreateNotificationDto createNotificationDto)
    {
        var existing = await _context.ProductStockNotifications
            .FirstOrDefaultAsync(n => n.VariantId == createNotificationDto.VariantId
            && n.UserEmail == createNotificationDto.UserEmail 
            && !n.Notified);

        if (existing != null)
        {
            return existing;
        }

        var notification = new ProductStockNotification
        {
            NotificationId = Guid.NewGuid(),
            VariantId = createNotificationDto.VariantId,
            UserEmail = createNotificationDto.UserEmail,
            Notified = false,
            CreatedAt = DateTime.UtcNow
        };

        _context.ProductStockNotifications.Add(notification);
        await _context.SaveChangesAsync();

        return notification;
    }
}
