using backend.src.Application.DTOs.Image;

namespace backend.src.Application.Interfaces;

public interface IImageService
{
    Task<ImageDto> GetImageByIdAsync(Guid imageId);
    Task<IEnumerable<ImageDto>> GetImagesByVariantAsync(Guid variantId);
    Task<ImageDto> CreateImageAsync(CreateImageDto createImageDto);
    Task<ImageDto> UpdateImageAsync(Guid imageId, UpdateImageDto updateImageDto);
    Task DeleteImageAsync(Guid imageId);
    Task SetDefaultImageAsync(Guid variantId, Guid imageId);
    Task DeleteImagesAsync(IEnumerable<Guid> imageIds);
}
