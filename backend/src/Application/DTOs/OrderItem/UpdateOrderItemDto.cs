namespace backend.src.Application.DTOs.OrderItem;

public record UpdateOrderItemDto(
    int? Quantity,
    decimal? PriceAdjustment
);
