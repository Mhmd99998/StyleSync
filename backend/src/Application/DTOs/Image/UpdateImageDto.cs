namespace backend.src.Application.DTOs.Image;

public record UpdateImageDto(
    string? ImageUrl,
    bool? IsDefault
);
