namespace backend.src.Application.DTOs.Analytics
{
    public class VariantSalesDto
    {
        public Guid VariantId { get; set; }
        public string Size { get; set; } = string.Empty;
        public string Color { get; set; } = string.Empty;
        public int UnitsSold { get; set; }
        public decimal Revenue { get; set; }
        public decimal Price { get; set; }
        public decimal Profit => Revenue - Price;
    }
}
