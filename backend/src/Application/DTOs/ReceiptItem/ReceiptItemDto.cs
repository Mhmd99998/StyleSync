namespace backend.src.Application.DTOs.ReceiptItem
{
    public class ReceiptItemDto
    {
        public Guid ReceiptItemId { get; set; }
        public Guid VariantId { get; set; }
        public int Quantity { get; set; }
        public decimal SellingPrice { get; set; }
    }
}
