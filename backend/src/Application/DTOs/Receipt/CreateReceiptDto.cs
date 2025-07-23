using backend.src.Application.DTOs.ReceiptItem;

namespace backend.src.Application.DTOs.Receipt
{
    public class CreateReceiptDto
    {
        public Guid BuyerId { get; set; }
        public DateTime Date { get; set; }
        public List<CreateReceiptItemDto> ReceiptItems { get; set; } = [];
    }
}
