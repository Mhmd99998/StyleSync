namespace backend.src.Application.DTOs.WishlistItem;

public record WishlistItemDto(
    Guid WishlistItemId,
    Guid UserId,
    Guid ProductId,
    string ProductName, 
    DateTime AddedAt
);
