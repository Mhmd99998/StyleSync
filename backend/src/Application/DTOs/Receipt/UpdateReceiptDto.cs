using backend.src.Application.DTOs.ReceiptItem;

namespace backend.src.Application.DTOs.Receipt
{
    public class UpdateReceiptDto
    {
        public DateTime Date { get; set; }
        public List<UpdateReceiptItemDto> ReceiptItems { get; set; }
    }
}
