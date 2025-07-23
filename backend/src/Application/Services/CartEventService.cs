using backend.src.Application.Interfaces;
using backend.src.Domain.Entities;
using backend.src.Infrastructure.Data;

namespace backend.src.Application.Services;

public class CartEventService: ICartEventService
{
    private readonly ApplicationDbContext _context;

    public CartEventService(ApplicationDbContext context)
    {
        _context = context;
    }

    public async Task CreateCartEventAsync(CartEvent cartEvent)
    {
        await _context.CartEvents.AddAsync(cartEvent);
        await _context.SaveChangesAsync();
    }
}
