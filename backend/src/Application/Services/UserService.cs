using AutoMapper;
using backend.src.Application.DTOs.User;
using backend.src.Application.Interfaces;
using backend.src.Application.Utilities;
using backend.src.Domain.Entities;
using backend.src.Domain.Exceptions;
using backend.src.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

public class UserService : IUserService
{
    private readonly ApplicationDbContext _context;
    private readonly IMapper _mapper;

    public UserService(ApplicationDbContext context, IMapper mapper)
    {
        _context = context;
        _mapper = mapper;
    }

    public async Task<UserDto> GetUserByIdAsync(Guid userId)
    {
        var user = await _context.Users.FindAsync(userId);
        return _mapper.Map<UserDto>(user);
    }

    public async Task<UserDto> GetUserByEmailAsync(string email)
    {
        var user = await _context.Users
            .Where(u => u.Email == email)
            .FirstOrDefaultAsync();
        return _mapper.Map<UserDto>(user);
    }

    public async Task<IEnumerable<UserDto>> GetAllUsersAsync()
    {
        var users = await _context.Users.ToListAsync();
        return _mapper.Map<IEnumerable<UserDto>>(users);
    }

    public async Task<UserDto> CreateUserAsync(CreateUserDto createUserDto)
    {
        var user = _mapper.Map<User>(createUserDto);

        user.UserId = Guid.NewGuid();
        // Hash password before saving
        user.Password = PasswordHasher.Hash(createUserDto.Password);
        user.CreatedAt = DateTime.UtcNow;

        _context.Users.Add(user);
        await _context.SaveChangesAsync();

        return _mapper.Map<UserDto>(user);
    }

    public async Task<UserDto> UpdateUserAsync(Guid userId, UpdateUserDto updateUserDto)
    {
        var user = await _context.Users.FindAsync(userId);
        if (user == null) throw new NotFoundException(nameof(User), userId);

        _mapper.Map(updateUserDto, user);

        // Only update password if provided
        if (!string.IsNullOrEmpty(updateUserDto.Password))
        {
            user.Password = PasswordHasher.Hash(updateUserDto.Password);
        }

        await _context.SaveChangesAsync();
        return _mapper.Map<UserDto>(user);
    }

    public async Task DeleteUserAsync(Guid userId)
    {
        var user = await _context.Users.FindAsync(userId);
        if (user == null) throw new NotFoundException(nameof(User), userId);

        _context.Users.Remove(user);
        await _context.SaveChangesAsync();
    }
}