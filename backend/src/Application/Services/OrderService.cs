using AutoMapper;
using backend.src.Application.DTOs.Order;
using backend.src.Application.Interfaces;
using backend.src.Domain.Entities;
using backend.src.Domain.Exceptions;
using backend.src.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Application.Services;

public class OrderService : IOrderService
{
    private readonly ApplicationDbContext _context;
    private readonly IMapper _mapper;
    private readonly IProductVariantService _variantService;

    public OrderService(
        ApplicationDbContext context,
        IMapper mapper,
        IProductVariantService variantService)
    {
        this._context = context;
        this._mapper = mapper;
        this._variantService = variantService;
    }

    public async Task<IEnumerable<OrderDto>> GetAllOrdersAsync()
    {
        var orders = await this._context.Orders
            .Include(o => o.User)
            .Include(o => o.OrderItems)
                .ThenInclude(oi => oi.Variant)
                .ToListAsync()
                ?? throw new NotFoundException();

        return this._mapper.Map<IEnumerable<OrderDto>>(orders);
    }

    public async Task<OrderDto> GetOrderByIdAsync(Guid orderId)
    {
        var order = await this._context.Orders
            .Include(o => o.User)
            .Include(o => o.OrderItems)
                .ThenInclude(oi => oi.Variant)
            .FirstOrDefaultAsync(o => o.OrderId == orderId)
            ?? throw new NotFoundException(nameof(Order), orderId);

        return this._mapper.Map<OrderDto>(order);
    }

    public async Task<IEnumerable<OrderDto>> GetOrdersByUserAsync(Guid userId)
    {
        var orders = await this._context.Orders
            .Where(o => o.UserId == userId)
            .Include(o => o.User)
            .Include(o => o.OrderItems)
                .ThenInclude(oi => oi.Variant)
            .ToListAsync();

        return this._mapper.Map<IEnumerable<OrderDto>>(orders);
    }

    public async Task<OrderDto> CreateOrderAsync(CreateOrderDto createOrderDto)
    {
        var order = new Order
        {
            OrderId = Guid.NewGuid(),
            PaymentIntentId = createOrderDto.PaymentIntentId,
            Status = createOrderDto.Status ?? "Pending",
            CreatedAt = DateTime.UtcNow,
            UserId = createOrderDto.UserId
        };

        _context.Orders.Add(order);
        await _context.SaveChangesAsync();

        return await GetOrderByIdAsync(order.OrderId);
    }

    public async Task<OrderDto> UpdateOrderStatusAsync(Guid orderId, UpdateOrderStatusDto updateDto)
    {
        var order = await this._context.Orders.FindAsync(orderId)
            ?? throw new NotFoundException(nameof(Order), orderId);

        order.Status = updateDto.Status;
        await this._context.SaveChangesAsync();

        return await GetOrderByIdAsync(orderId);
    }

    public async Task CancelOrderAsync(Guid orderId)
    {
        using var transaction = await this._context.Database.BeginTransactionAsync();

        try
        {
            var order = await this._context.Orders
                .Include(o => o.OrderItems)
                .FirstOrDefaultAsync(o => o.OrderId == orderId)
                ?? throw new NotFoundException(nameof(Order), orderId);

            // Restock items
            foreach (var item in order.OrderItems)
            {
                var variant = await this._context.ProductVariants.FindAsync(item.VariantId);
                variant.Stock += item.Quantity;
            }

            order.Status = "Cancelled";
            await this._context.SaveChangesAsync();
            await transaction.CommitAsync();
        }
        catch
        {
            await transaction.RollbackAsync();
            throw;
        }
    }
}
