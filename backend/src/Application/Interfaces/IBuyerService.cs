using backend.src.Application.DTOs.Buyer;

namespace backend.src.Application.Interfaces;

public interface IBuyerService
{
    Task<BuyerDto> CreateBuyerAsync(CreateBuyerDto dto);
    Task<BuyerDto?> GetBuyerByIdAsync(Guid buyerId);
    Task<IEnumerable<BuyerDto>> GetAllBuyersAsync();
    Task<BuyerDto?> UpdateBuyerAsync(Guid buyerId, UpdateBuyerDto dto);
    Task<bool> DeleteBuyerAsync(Guid buyerId);
}
