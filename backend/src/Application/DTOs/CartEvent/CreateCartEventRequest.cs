namespace backend.src.Application.DTOs.CartEvent;

public class CreateCartEventRequest
{
    public Guid UserId { get; set; }
    public Guid VariantId { get; set; }
    public int Quantity { get; set; }
}
