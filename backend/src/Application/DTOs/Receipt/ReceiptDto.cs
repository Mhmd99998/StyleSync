using backend.src.Application.DTOs.ReceiptItem;

namespace backend.src.Application.DTOs.Receipt
{
    public class ReceiptDto
    {
        public Guid ReceiptId { get; set; }
        public Guid BuyerId { get; set; }
        public decimal TotalAmount { get; set; }
        public DateTime Date { get; set; }

        public List<ReceiptItemDto> ReceiptItems { get; set; } = [];
    }
}
