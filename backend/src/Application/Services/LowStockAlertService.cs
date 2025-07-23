using backend.src.Application.DTOs.Email;
using backend.src.Application.Interfaces;
using backend.src.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Application.Services;

public class LowStockAlertService : BackgroundService
{
    private readonly IServiceProvider _serviceProvider;

    public LowStockAlertService(IServiceProvider serviceProvider)
    {
        _serviceProvider = serviceProvider;
    }

    public async Task CheckAndSendLowStockAlertsAsync()
    {
        try
        {
            using var scope = _serviceProvider.CreateScope();
            var context = scope.ServiceProvider.GetRequiredService<ApplicationDbContext>();
            var emailService = scope.ServiceProvider.GetRequiredService<IEmailService>();

            var lowStockVariants = await context.ProductVariants
                .Where(v => v.Stock <= v.MinStock)
                .Include(v => v.Product)
                .ToListAsync();

            Console.WriteLine($"Found {lowStockVariants.Count} low stock variants.");

            if (!lowStockVariants.Any())
                return;

            var lowStockItems = lowStockVariants.Select(v => new LowStockItemDto
            {
                ProductName = v.Product.Name,
                VariantId = v.VariantId,
                Size = v.Size,
                Color = v.Color,
                Stock = v.Stock,
                MinStock = v.MinStock,
                Sku = v.SKU
            }).ToList();

            var lowStockAlertEmailDto = new LowStockAlertEmailDto
            {
                Items = lowStockItems
            };

            Console.WriteLine("Sending low stock alert email...");
            await emailService.SendLowStockAlertAsync(lowStockAlertEmailDto);
        }
        catch (Exception ex)
        {
            throw new Exception("Error occurred while processing low stock alerts: " + ex.Message);
        }
    }

    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        var delay = TimeSpan.FromHours(3);

        while (!stoppingToken.IsCancellationRequested)
        {
            await CheckAndSendLowStockAlertsAsync();

            await Task.Delay(delay, stoppingToken);
        }
    }
}
