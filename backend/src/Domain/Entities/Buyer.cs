using System.ComponentModel.DataAnnotations;

namespace backend.src.Domain.Entities;

public class Buyer
{
    public Guid BuyerId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string? Location { get; set; }
    public string? Email { get; set; }
    public string? PhoneNumber { get; set; }
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    public decimal Balance { get; set; } = 0;

    //public ICollection<Receipt> Receipts { get; set; } = [];
}
