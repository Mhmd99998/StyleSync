namespace backend.src.Application.DTOs.User;

public record UpdateUserDto(
    string? Email,
    string? Password,
    string? FirstName,
    string? LastName, 
    bool? IsEmailVerified,
    string? Role
);
