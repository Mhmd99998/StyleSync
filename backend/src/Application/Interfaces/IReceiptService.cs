using backend.src.Application.DTOs.Receipt;

namespace backend.src.Application.Interfaces;

public interface IReceiptService
{
    Task<IEnumerable<ReceiptDto>> GetAllReceiptsAsync();
    Task<ReceiptDto> GetReceiptByIdAsync(Guid receiptId);
    Task<IEnumerable<ReceiptDto>> GetReceiptsByBuyerIdAsync(Guid buyerId);
    Task<IEnumerable<ReceiptDto>> GetReceiptsByVariantIdAsync(Guid variantId);
    Task<ReceiptDto> CreateReceiptAsync(CreateReceiptDto dto);
    Task<ReceiptDto> UpdateReceiptAsync(Guid receiptId, UpdateReceiptDto dto);
    Task DeleteReceiptAsync(Guid receiptId);
}
