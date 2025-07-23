namespace backend.src.Domain.Entities;

public class ReceiptItem
{
    public Guid ReceiptItemId { get; set; }
    public Guid ReceiptId { get; set; }
    public Guid VariantId { get; set; }
    public int Quantity { get; set; }
    public decimal SellingPrice { get; set; }
    public decimal LineTotal { get; private set; }
    public Receipt Receipt { get; set; }
    public ProductVariant Variant { get; set; } 
}
