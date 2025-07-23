namespace backend.src.Application.DTOs.Analytics
{
    public class ProductSalesStatsDto
    {
        public int UnitsSold { get; set; }
        public decimal TotalRevenue { get; set; }
        public List<VariantSalesDto> TopVariants { get; set; } = [];
    }
}
