namespace backend.src.Application.DTOs.Image;

public record ImageDto(
    Guid ImageId,
    Guid VariantId,
    string ImageUrl,
    bool IsDefault
);
