using backend.src.Application.Interfaces;
namespace backend.src.Application.Services;

public class BackInStockNotificationService : BackgroundService
{
    private readonly IServiceProvider _serviceProvider;

    public BackInStockNotificationService(IServiceProvider serviceProvider)
    {
        _serviceProvider = serviceProvider;
    }

    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        var delay = TimeSpan.FromHours(1); 

        while (!stoppingToken.IsCancellationRequested)
        {
            await SendBackInStockNotificationsAsync();
            await Task.Delay(delay, stoppingToken);
        }
    }

    private async Task SendBackInStockNotificationsAsync()
    {
        try
        {
            using var scope = _serviceProvider.CreateScope();
            var emailService = scope.ServiceProvider.GetRequiredService<IEmailService>();

            Console.WriteLine("Checking for back-in-stock notifications...");
            await emailService.SendBackInStockNotificationsAsync();
            Console.WriteLine("Back-in-stock notifications sent.");
        }
        catch (Exception ex)
        {
            Console.WriteLine("Error occurred while sending back-in-stock notifications: " + ex.Message);
        }
    }
}
