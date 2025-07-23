namespace backend.src.Application.DTOs.Analytics;

public class MonthlyBreakdownDto
{
    public int Year { get; set; }
    public int Month { get; set; }
    public decimal Revenue { get; set; }
    public decimal GrossProfit { get; set; }
}
