namespace backend.src.Domain.Entities;

public class WishlistItem
{
    public Guid WishlistItemId { get; set; }
    public Guid UserId { get; set; }
    public Guid ProductId { get; set; }
    public DateTime AddedAt { get; set; }

    public User User { get; set; } = null!;
    public Product Product { get; set; } = null!;
}
