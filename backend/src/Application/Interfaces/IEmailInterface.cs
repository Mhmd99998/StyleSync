using backend.src.Application.DTOs.Email;

namespace backend.src.Application.Interfaces;

public interface IEmailService
{
    Task SendVerificationEmailAsync(string email, string verificationLink);
    Task SendOrderConfirmationAsync(OrderConfirmationEmailDto orderConfirmationEmailDto);
    Task SendOrderStatusUpdateAsync(OrderStatusUpdateEmailDto orderStatusUpdateEmailDto);
    Task SendLowStockAlertAsync(LowStockAlertEmailDto lowStockAlertEmailDto);
    Task SendBackInStockNotificationsAsync();
}
