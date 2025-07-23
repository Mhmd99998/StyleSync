namespace backend.src.Application.DTOs.User;

public record UserDto(
    Guid UserId,
    string Email,
    string? FirstName,
    string? LastName,
    DateTime CreatedAt,
    bool IsEmailVerified,
    string Role
);
