namespace backend.src.Application.DTOs.Buyer;

public record UpdateBuyerDto(
    string Name,
    string? Location, 
    string? Email,
    string? PhoneNumber,
    decimal Balance
);
