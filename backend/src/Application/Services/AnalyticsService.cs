using AutoMapper;
using backend.src.Application.DTOs.Analytics;
using backend.src.Application.Interfaces;
using backend.src.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Application.Services;

public class AnalyticsService : IAnalyticsService
{
    private readonly ApplicationDbContext _context;
    private readonly IMapper _mapper;

    public AnalyticsService(ApplicationDbContext context, IMapper mapper)
    {
        _context = context;
        _mapper = mapper;
    }

    public async Task<ProductSalesStatsDto> GetProductSalesStatsAsync(Guid productId, string period)
    {
        var (startDate, endDate) = GetPeriodRange(period);

        // Get all orders with items related to this product
        var orders = await _context.Orders
            .Where(o => o.CreatedAt >= startDate && o.CreatedAt <= endDate)
            .Include(o => o.OrderItems)
            .ThenInclude(i => i.Variant)
            .ThenInclude(v => v.Product)
            .ToListAsync();

        var productItems = orders
            .SelectMany(o => o.OrderItems)
            .Where(i => i.Variant.ProductId == productId)
            .ToList();

        var unitsSold = productItems.Sum(i => i.Quantity);
        var totalRevenue = productItems.Sum(i => i.Quantity * i.PriceAtPurchase);

        var variantGroups = productItems
            .GroupBy(i => i.VariantId)
            .Select(g => new VariantSalesDto
            {
                VariantId = g.Key,
                Size = g.First().Variant.Size,
                Color = g.First().Variant.Color,
                UnitsSold = g.Sum(i => i.Quantity),
                Revenue = g.Sum(i => i.Quantity * i.PriceAtPurchase)
            })
            .OrderByDescending(v => v.UnitsSold)
            .ToList();

        return new ProductSalesStatsDto
        {
            UnitsSold = unitsSold,
            TotalRevenue = totalRevenue,
            TopVariants = variantGroups
        };
    }

    public async Task<List<TopProductDto>> GetTopSellingProductsAsync(string period, int n)
    {
        var (startDate, endDate) = GetPeriodRange(period);

        var productGroups = await _context.OrderItems
            .Where(i => i.Order.CreatedAt >= startDate && i.Order.CreatedAt <= endDate)
            .Where(i => !i.Variant.Product.IsArchived)
            .GroupBy(i => new { i.Variant.ProductId, i.Variant.Product.Name })
            .Select(g => new TopProductDto
            {
                ProductId = g.Key.ProductId,
                ProductName = g.Key.Name,
                UnitsSold = g.Sum(i => i.Quantity),
                TotalRevenue = g.Sum(i => i.Quantity * i.PriceAtPurchase)
            })
            .OrderByDescending(p => p.UnitsSold)
            .Take(n)
            .ToListAsync();

        return productGroups;
    }

    public async Task<List<MonthlyRevenueDto>> GetMonthlyRevenueAsync(string period)
    {
        var (startDate, endDate) = GetPeriodRange(period);

        var orders = await _context.Orders
            .Where(o => o.CreatedAt >= startDate && o.CreatedAt <= endDate)
            .Include(o => o.OrderItems)
            .ToListAsync();

        var monthlyRevenue = orders
            .SelectMany(o => o.OrderItems)
            .GroupBy(i => new { i.Order.CreatedAt.Year, i.Order.CreatedAt.Month })
            .Select(g => new MonthlyRevenueDto
            {
                Year = g.Key.Year,
                Month = g.Key.Month,
                Revenue = g.Sum(i => i.Quantity * i.PriceAtPurchase)
            })
            .OrderBy(g => g.Year)
            .ThenBy(g => g.Month)
            .ToList();

        return monthlyRevenue;
    }

    public async Task<List<MonthlyGrossProfitDto>> GetMonthlyGrossProfitAsync(string period)
    {
        var (startDate, endDate) = GetPeriodRange(period);

        var orders = await _context.Orders
            .Where(o => o.CreatedAt >= startDate && o.CreatedAt <= endDate)
            .Include(o => o.OrderItems)
            .ThenInclude(i => i.Variant)
            .ToListAsync();

        var grossProfitData = orders
            .SelectMany(o => o.OrderItems)
            .GroupBy(i => new { i.Order.CreatedAt.Year, i.Order.CreatedAt.Month })
            .Select(g => new MonthlyGrossProfitDto
            {
                Year = g.Key.Year,
                Month = g.Key.Month,
                Revenue = g.Sum(i => i.Quantity * i.PriceAtPurchase),
                Cost = g.Sum(i => i.Quantity * i.Variant.BoughtAt)
            })
            .OrderBy(g => g.Year)
            .ThenBy(g => g.Month)
            .ToList();

        return grossProfitData;
    }

    public async Task<List<ProductAnalyticsGroupDto>> GetProductAnalyticsAsync(List<Guid> productIds, string period)
    {
        var (startDate, endDate) = GetPeriodRange(period);

        var orders = await _context.Orders
            .Where(o => o.CreatedAt >= startDate && o.CreatedAt <= endDate)
            .Include(o => o.OrderItems)
            .ThenInclude(i => i.Variant)
            .ThenInclude(v => v.Product)
            .ToListAsync();

        var relevantItems = orders
            .SelectMany(o => o.OrderItems)
            .Where(i => productIds.Contains(i.Variant.ProductId))
            .ToList();

        var groupedByProduct = relevantItems
            .GroupBy(i => i.Variant.ProductId)
            .Select(g => new ProductAnalyticsGroupDto
            {
                ProductId = g.Key,
                ProductName = g.First().Variant.Product.Name,
                UnitsSold = g.Sum(i => i.Quantity),
                TotalRevenue = g.Sum(i => i.Quantity * i.PriceAtPurchase),
                TotalCost = g.Sum(i => i.Quantity * i.Variant.BoughtAt),
                VariantBreakdown = g
                    .GroupBy(i => i.VariantId)
                    .Select(vg => new VariantSalesDto
                    {
                        VariantId = vg.Key,
                        Size = vg.First().Variant.Size,
                        Color = vg.First().Variant.Color,
                        UnitsSold = vg.Sum(i => i.Quantity),
                        Revenue = vg.Sum(i => i.Quantity * i.PriceAtPurchase),
                        Price = vg.Sum(i => i.Quantity * i.Variant.BoughtAt),
                    })
                    .OrderByDescending(v => v.UnitsSold)
                    .ToList(),

                MonthlyBreakdown = g
                    .GroupBy(i => new { i.Order.CreatedAt.Year, i.Order.CreatedAt.Month })
                    .Select(mg => new MonthlyBreakdownDto
                    {
                        Year = mg.Key.Year,
                        Month = mg.Key.Month,
                        Revenue = mg.Sum(i => i.Quantity * i.PriceAtPurchase),
                        GrossProfit = mg.Sum(i => (i.Quantity * i.PriceAtPurchase) - (i.Quantity * i.Variant.BoughtAt))
                    })
                    .OrderBy(x => x.Year)
                    .ThenBy(x => x.Month)
                    .ToList()
            })
            .ToList();

        return groupedByProduct;
    }

    private (DateTime start, DateTime end) GetPeriodRange(string period)
    {
        var now = DateTime.UtcNow;

        if (string.IsNullOrWhiteSpace(period))
            return (now.AddYears(-1), now);

        switch (period.ToLower())
        {
            case "month":
                return (now.AddMonths(-1), now);
            case "year":
                return (now.AddYears(-1), now);
            default:
                if (period.Contains("_to_"))
                {
                    var parts = period.Split("_to_");
                    if (parts.Length == 2 &&
                        DateTime.TryParse(parts[0], out var customStart) &&
                        DateTime.TryParse(parts[1], out var customEnd))
                    {
                        // Convert to UTC
                        customStart = DateTime.SpecifyKind(customStart, DateTimeKind.Utc);
                        customEnd = DateTime.SpecifyKind(customEnd, DateTimeKind.Utc);

                        return (customStart, customEnd);
                    }
                }
                // Fallback
                return (now.AddYears(-1), now);
        }
    }
}
