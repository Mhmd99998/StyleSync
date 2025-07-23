using Microsoft.AspNetCore.Identity;

namespace backend.src.Domain.Entities;
public class User
{
    public Guid UserId { get; set; } 
    public string Email { get; set; } = string.Empty;
    public string Password { get; set; } = string.Empty;
    public string? FirstName { get; set; }
    public string? LastName { get; set; }
    public DateTime CreatedAt { get; set; } 
    public bool IsEmailVerified { get; set; }
    public string Role { get; set; } = "customer";

    public Cart Cart { get; set; } = null!;
    public ICollection<Order> Orders { get; set; } = [];
    public ICollection<WishlistItem> WishlistItems { get; set; } = [];
    public ICollection<CartEvent> CartEvents { get; set; } = [];
}
