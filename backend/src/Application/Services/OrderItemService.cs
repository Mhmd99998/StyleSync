using AutoMapper;
using backend.src.Application.DTOs.OrderItem;
using backend.src.Application.Interfaces;
using backend.src.Domain.Entities;
using backend.src.Domain.Exceptions;
using backend.src.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Application.Services;

public class OrderItemService : IOrderItemService
{
    private readonly ApplicationDbContext _context;
    private readonly IMapper _mapper;
    private readonly IProductVariantService _variantService;

    public OrderItemService(
        ApplicationDbContext context,
        IMapper mapper,
        IProductVariantService variantService)
    {
        this._context = context;
        this._mapper = mapper;
        this._variantService = variantService;
    }

    public async Task<OrderItemDto> GetOrderItemByIdAsync(Guid orderItemId)
    {
        var orderItem = await this._context.OrderItems
            .Include(oi => oi.Variant)
            .Include(oi => oi.Order)
            .FirstOrDefaultAsync(oi => oi.OrderItemId == orderItemId)
            ?? throw new NotFoundException(nameof(OrderItem), orderItemId);

        return this._mapper.Map<OrderItemDto>(orderItem);
    }

    public async Task<OrderItemDto> AddOrderItemAsync(Guid orderId, CreateOrderItemDto createOrderItemDto)
    {
        // Check if the order exists first
        var order = await _context.Orders
            .FirstOrDefaultAsync(o => o.OrderId == orderId)
            ?? throw new NotFoundException(nameof(Order), orderId);

        // Check if the variant exists
        var variant = await _context.ProductVariants
            .FirstOrDefaultAsync(v => v.VariantId == createOrderItemDto.VariantId)
            ?? throw new NotFoundException(nameof(ProductVariant), createOrderItemDto.VariantId);

        // Create a new OrderItem
        var orderItem = new OrderItem
        {
            OrderId = orderId,
            VariantId = createOrderItemDto.VariantId,
            Quantity = createOrderItemDto.Quantity,
            PriceAtPurchase = createOrderItemDto.PriceAtPurchase
        };
        _context.OrderItems.Add(orderItem);
        variant.Stock -= createOrderItemDto.Quantity;

        await _context.SaveChangesAsync();
        return _mapper.Map<OrderItemDto>(orderItem);
    }

    public async Task<OrderItemDto> UpdateOrderItemAsync(Guid orderItemId, UpdateOrderItemDto updateDto)
    {
        using var transaction = await this._context.Database.BeginTransactionAsync();

        try
        {
            var orderItem = await this._context.OrderItems
                .Include(oi => oi.Order)
                .Include(oi => oi.Variant)
                .FirstOrDefaultAsync(oi => oi.OrderItemId == orderItemId)
                ?? throw new NotFoundException(nameof(OrderItem), orderItemId);

            if (updateDto.Quantity.HasValue)
            {
                var quantityDifference = updateDto.Quantity.Value - orderItem.Quantity;

                if (quantityDifference > 0)
                {
                    if (orderItem.Variant.Stock < quantityDifference)
                    {
                        throw new InsufficientStockException(
                            orderItem.Variant.SKU,
                            orderItem.Variant.Stock
                        );
                    }
                    orderItem.Variant.Stock -= quantityDifference;
                }
                else
                {
                    orderItem.Variant.Stock += Math.Abs(quantityDifference);
                }

                orderItem.Quantity = updateDto.Quantity.Value;
            }

            if (updateDto.PriceAdjustment.HasValue)
            {
                orderItem.PriceAtPurchase += updateDto.PriceAdjustment.Value;
            }

            await _context.SaveChangesAsync();
            await transaction.CommitAsync();

            return await GetOrderItemByIdAsync(orderItemId);
        }
        catch
        {
            await transaction.RollbackAsync();
            throw;
        }
    }

    public async Task DeleteOrderItemAsync(Guid orderItemId)
    {
        using var transaction = await this._context.Database.BeginTransactionAsync();

        try
        {
            var orderItem = await this._context.OrderItems
                .Include(oi => oi.Order)
                .Include(oi => oi.Variant)
                .FirstOrDefaultAsync(oi => oi.OrderItemId == orderItemId)
                ?? throw new NotFoundException(nameof(OrderItem), orderItemId);

            // Restock the variant
            orderItem.Variant.Stock += orderItem.Quantity;

            this._context.OrderItems.Remove(orderItem);
            await this._context.SaveChangesAsync();
            await transaction.CommitAsync();
        }
        catch
        {
            await transaction.RollbackAsync();
            throw;
        }
    }

    public async Task RestockOrderItemAsync(Guid orderItemId)
    {
        using var transaction = await this._context.Database.BeginTransactionAsync();

        try
        {
            var orderItem = await this._context.OrderItems
                .Include(oi => oi.Variant)
                .FirstOrDefaultAsync(oi => oi.OrderItemId == orderItemId)
                ?? throw new NotFoundException(nameof(OrderItem), orderItemId);

            orderItem.Variant.Stock += orderItem.Quantity;
            orderItem.Quantity = 0; // Mark as restocked

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
