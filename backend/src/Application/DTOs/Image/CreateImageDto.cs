namespace backend.src.Application.DTOs.Image;

public record CreateImageDto(
    Guid VariantId,
    string ImageUrl,
    bool IsDefault = false
);
