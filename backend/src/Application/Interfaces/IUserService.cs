using backend.src.Application.DTOs.User;

namespace backend.src.Application.Interfaces;
public interface IUserService
{
    Task<IEnumerable<UserDto>> GetAllUsersAsync();
    Task<UserDto> GetUserByIdAsync(Guid userId);
    Task<UserDto> GetUserByEmailAsync(string email);
    Task<UserDto> CreateUserAsync(CreateUserDto createUserDto);
    Task<UserDto> UpdateUserAsync(Guid userId, UpdateUserDto updateUserDto);
    Task DeleteUserAsync(Guid userId);
}
