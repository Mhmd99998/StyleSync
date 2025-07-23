namespace backend.src.Application.DTOs.Analytics;

public class ProductAnalyticsGroupDto
{
    public Guid ProductId { get; set; }
    public string ProductName { get; set; }
    public int UnitsSold { get; set; }
    public decimal TotalRevenue { get; set; }
    public decimal TotalCost { get; set; }
    public decimal GrossProfit => TotalRevenue - TotalCost;

    public List<VariantSalesDto> VariantBreakdown { get; set; } = [];
    public List<MonthlyBreakdownDto> MonthlyBreakdown { get; set; } = [];
}
