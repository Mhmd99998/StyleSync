namespace backend.src.Application.DTOs.User;

public record CreateUserDto(
    string Email,
    string Password,
    string? FirstName,
    string? LastName,
    string Role = "customer"
);
