namespace backend.src.Application.DTOs.Analytics;

public class MonthlyGrossProfitDto
{
    public int Year { get; set; }
    public int Month { get; set; }
    public decimal Revenue { get; set; }
    public decimal Cost { get; set; }
    public decimal GrossProfit => Revenue - Cost;
}
