namespace backend.src.Application.DTOs.CartItem;

public record AddCartItemDto(
    Guid VariantId,
    int Quantity
);
