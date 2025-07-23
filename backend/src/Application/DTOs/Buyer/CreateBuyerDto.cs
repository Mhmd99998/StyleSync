namespace backend.src.Application.DTOs.Buyer;

public record CreateBuyerDto(
    string Name, 
    string? Location, 
    string? Email, 
    string? PhoneNumber,
    decimal Balance
);
