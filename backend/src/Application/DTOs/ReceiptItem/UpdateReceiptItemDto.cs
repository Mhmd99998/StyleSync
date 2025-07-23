namespace backend.src.Application.DTOs.ReceiptItem
{
    public class UpdateReceiptItemDto
    {
        public Guid? VariantId { get; set; }
        public int? Quantity { get; set; }
        public decimal? SellingPrice { get; set; }
    }
}
