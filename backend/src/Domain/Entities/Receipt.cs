namespace backend.src.Domain.Entities;

public class Receipt
{
    public Guid ReceiptId { get; set; }
    public Guid BuyerId { get; set; }
    public decimal TotalAmount { get; set; }
    public DateTime Date { get; set; }

    public Buyer Buyer { get; set; }
    public ICollection<ReceiptItem> ReceiptItems { get; set; }
}
