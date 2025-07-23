namespace backend.src.Application.DTOs.OrderItem;

public record CreateOrderItemDto(
    Guid VariantId,
    int Quantity,
    decimal PriceAtPurchase
);
