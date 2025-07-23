using backend.src.Application.DTOs.Analytics;

namespace backend.src.Application.Interfaces;

public interface IAnalyticsService
{
    Task<ProductSalesStatsDto> GetProductSalesStatsAsync(Guid productId, string period);
    Task<List<TopProductDto>> GetTopSellingProductsAsync(string period, int n);
    Task<List<MonthlyRevenueDto>> GetMonthlyRevenueAsync(string period);
    Task<List<MonthlyGrossProfitDto>> GetMonthlyGrossProfitAsync(string period);
    Task<List<ProductAnalyticsGroupDto>> GetProductAnalyticsAsync(List<Guid> productIds, string period);
}
