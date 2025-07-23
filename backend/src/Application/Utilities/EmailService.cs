using MailKit.Net.Smtp;
using MimeKit;
using Microsoft.Extensions.Options;
using System.Net.Mail;
using backend.src.Application.Interfaces;
using backend.src.Application.DTOs.Email;
using backend.src.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Application.Utilities;

public class EmailService : IEmailService
{
    private readonly ApplicationDbContext _context;
    private readonly EmailConfig _config;

    public EmailService(ApplicationDbContext context, IOptions<EmailConfig> config)
    {
        _context = context;
        _config = config.Value;
    }

    public async Task SendVerificationEmailAsync(string email, string verificationLink)
    {
        var subject = "Verify Your StyleSync Account";
        var htmlBody = $@"
            <h2 style='color: #1a365d;'>Welcome to StyleSync!</h2>
            <p style='font-size: 16px; color: #444;'>To finish creating your account, please confirm your email by clicking the button below:</p>
            <p style='margin: 24px 0;'>
                <a href='{verificationLink}' style='background: #2563eb; color: #fff; text-decoration: none; padding: 12px 24px; border-radius: 6px; font-weight: 600; display: inline-block;'>
                    Verify Email
                </a>
            </p>
            <p style='font-size: 14px; color: #666;'>This link is valid for 24 hours. If you didn’t request this, you can safely ignore this email.</p>";

        await SendEmailAsync(email, subject, AppendHeaderAndFooter(htmlBody));
    }

    public async Task SendOrderConfirmationAsync(OrderConfirmationEmailDto dto)
    {
        var subject = "Your StyleSync Order Confirmation";
        var htmlBody = $@"
            <h2 style='color: #1a365d;'>Order Confirmation</h2>
            <p style='font-size: 16px; color: #333;'>Thank you for shopping with StyleSync!</p>
            <p style='margin-top: 16px;'><strong>Order ID:</strong> {dto.OrderId}</p>
            <p><strong>Date:</strong> {dto.OrderDate:f}</p>
            <p style='margin-top: 20px;'>We’ll send another email once your items ship.</p>";

        await SendEmailAsync(dto.Email, subject, AppendHeaderAndFooter(htmlBody));
    }

    public async Task SendOrderStatusUpdateAsync(OrderStatusUpdateEmailDto dto)
    {
        string statusColor = dto.NewStatus.ToLower() switch
        {
            "processing" => "#facc15",
            "shipped" => "#0ea5e9",
            "delivered" => "#10b981",
            "cancelled" => "#ef4444",
            _ => "#6b7280"
        };

        var subject = $"Your Order #{dto.OrderId} Status Update";
        var htmlBody = $@"
            <h2 style='color: #1a365d;'>Order Update</h2>
            <p style='font-size: 16px;'>Your order <strong>{dto.OrderId}</strong> has been updated.</p>
            <p style='margin-top: 20px;'>
                <span style='background-color: {statusColor}; color: white; padding: 8px 16px; border-radius: 4px; font-weight: 600;'>
                    New Status: {dto.NewStatus}
                </span>
            </p>
            <p style='margin-top: 24px;'>You can log in to your account to view the full details.</p>";

        await SendEmailAsync(dto.Email, subject, AppendHeaderAndFooter(htmlBody));
    }

    public async Task SendLowStockAlertAsync(LowStockAlertEmailDto dto)
    {
        var adminEmails = await _context.Users
            .Where(u => u.Role == "admin")
            .Select(u => u.Email)
            .ToListAsync();

        if (!adminEmails.Any())
            throw new Exception("No admin emails found to send low stock alert.");

        var htmlBody = $@"
            <h2 style='color: #dc2626;'>Low Stock Alert</h2>
            <p>The following products are below their minimum stock level:</p>
            <table style='width: 100%; border-collapse: collapse; margin-top: 16px;'>
                <thead style='background-color: #f3f4f6;'>
                    <tr>
                        <th style='padding: 8px; border: 1px solid #ddd;'>Product Name</th>
                        <th style='padding: 8px; border: 1px solid #ddd;'>Variant</th>
                        <th style='padding: 8px; border: 1px solid #ddd;'>Size</th>
                        <th style='padding: 8px; border: 1px solid #ddd;'>Color</th>
                        <th style='padding: 8px; border: 1px solid #ddd;'>Current Stock</th>
                        <th style='padding: 8px; border: 1px solid #ddd;'>Min Stock</th>
                    </tr>
                </thead>
                <tbody>";

        foreach (var item in dto.Items)
        {
            htmlBody += $@"
                    <tr>
                        <td style='padding: 8px; border: 1px solid #ddd;'>{item.ProductName}</td>
                        <td style='padding: 8px; border: 1px solid #ddd;'>{item.Sku}</td>
                        <td style='padding: 8px; border: 1px solid #ddd;'>{item.Size}</td>
                        <td style='padding: 8px; border: 1px solid #ddd;'>{item.Color}</td>
                        <td style='padding: 8px; border: 1px solid #ddd;'>{item.Stock}</td>
                        <td style='padding: 8px; border: 1px solid #ddd;'>{item.MinStock}</td>
                    </tr>";
        }

        htmlBody += @"
                </tbody>
            </table>
            <p style='margin-top: 20px; color: #555;'>Please restock these items as soon as possible.</p>";

        await SendEmailAsync(adminEmails, "Low Stock Alert", AppendHeaderAndFooter(htmlBody));
    }

    public async Task SendBackInStockNotificationsAsync()
    {
        var notifications = await _context.ProductStockNotifications
            .Include(n => n.Variant)
            .ThenInclude(v => v.Product)
            .Where(n => !n.Notified && n.Variant.Stock > 0)
            .ToListAsync();

        foreach (var notification in notifications)
        {
            var variant = notification.Variant;
            var product = variant.Product;

            var subject = "Product Back in Stock!";
            var htmlBody = $@"
                <h2 style='color: #0ea5e9;'>Back in Stock!</h2>
                <p style='font-size: 16px;'>The product you wanted is available again:</p>
                <ul style='margin: 16px 0; padding-left: 20px; color: #333;'>
                    <li><strong>Product:</strong> {product.Name}</li>
                    <li><strong>Variant:</strong> {variant.Size} - {variant.Color}</li>
                    <li><strong>Price:</strong> {variant.Price:C}</li>
                </ul>
                <a href='https://localhost:4200/products/{product.ProductId}' style='background: #2563eb; color: white; padding: 12px 24px; text-decoration: none; border-radius: 5px; display: inline-block;'>
                    View Product
                </a>
                <p style='font-size: 14px; color: #666; margin-top: 20px;'>Hurry before it sells out again!</p>";

            await SendEmailAsync(notification.UserEmail, subject, AppendHeaderAndFooter(htmlBody));
            notification.Notified = true;
        }

        await _context.SaveChangesAsync();
    }

    // Combines header + body + footer
    private string AppendHeaderAndFooter(string content)
    {
        return AppendHeader(content) + AppendFooter("");
    }

    private string AppendHeader(string body)
    {
        return $@"
        <div style='font-family: Poppins, sans-serif; padding: 24px; background-color: #f8fafc;'>
            <div style='max-width: 600px; margin: 0 auto; background: white; padding: 32px; border-radius: 10px; box-shadow: 0 5px 20px rgba(0,0,0,0.05);'>
                <div style='text-align: center; margin-bottom: 24px;'>
                    <h1 style='margin: 0; font-size: 24px; color: #2563eb;'>StyleSync</h1>
                    <p style='margin: 4px 0; color: #64748b; font-size: 14px;'>Your fashion, your flow.</p>
                </div>
                {body}";
    }

    private string AppendFooter(string _)
    {
        return $@"
                <hr style='margin: 32px 0; border: none; border-top: 1px solid #e2e8f0;' />
                <p style='font-size: 12px; text-align: center; color: #94a3b8;'>© StyleSync {DateTime.UtcNow.Year}. All rights reserved.</p>
            </div>
        </div>";
    }

    private async Task SendEmailAsync(string to, string subject, string htmlBody)
    {
        var message = new MimeMessage();
        message.From.Add(new MailboxAddress(_config.FromName, _config.FromAddress));
        message.To.Add(new MailboxAddress("", to));
        message.Subject = subject;
        message.Body = new BodyBuilder { HtmlBody = htmlBody }.ToMessageBody();

        using var client = new MailKit.Net.Smtp.SmtpClient();
        await client.ConnectAsync(_config.SmtpServer, _config.SmtpPort, false);
        await client.AuthenticateAsync(_config.SmtpUsername, _config.SmtpPassword);
        await client.SendAsync(message);
        await client.DisconnectAsync(true);
    }

    private async Task SendEmailAsync(List<string> recipients, string subject, string htmlBody)
    {
        var message = new MimeMessage();
        message.From.Add(new MailboxAddress(_config.FromName, _config.FromAddress));
        foreach (var email in recipients)
        {
            message.To.Add(new MailboxAddress("", email));
        }
        message.Subject = subject;
        message.Body = new BodyBuilder { HtmlBody = htmlBody }.ToMessageBody();

        using var client = new MailKit.Net.Smtp.SmtpClient();
        await client.ConnectAsync(_config.SmtpServer, _config.SmtpPort, false);
        await client.AuthenticateAsync(_config.SmtpUsername, _config.SmtpPassword);
        await client.SendAsync(message);
        await client.DisconnectAsync(true);
    }
}
