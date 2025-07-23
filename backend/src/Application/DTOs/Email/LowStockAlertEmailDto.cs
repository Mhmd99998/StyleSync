namespace backend.src.Application.DTOs.Email;

public class LowStockAlertEmailDto
{
    public List<LowStockItemDto> Items { get; set; } = [];
}
