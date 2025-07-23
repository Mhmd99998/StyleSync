using Microsoft.EntityFrameworkCore;
using AutoMapper;
using backend.src.Application.DTOs.Buyer;
using backend.src.Application.Interfaces;
using backend.src.Domain.Entities;
using backend.src.Infrastructure.Data;

namespace backend.src.Application.Services;

public class BuyerService : IBuyerService
{
    private readonly ApplicationDbContext _context;
    private readonly IMapper _mapper;

    public BuyerService(ApplicationDbContext context, IMapper mapper)
    {
        _context = context;
        _mapper = mapper;
    }

    public async Task<BuyerDto> CreateBuyerAsync(CreateBuyerDto dto)
    {
        var buyer = _mapper.Map<Buyer>(dto);
        buyer.BuyerId = Guid.NewGuid();
        buyer.CreatedAt = DateTime.UtcNow;

        _context.Buyers.Add(buyer);
        await _context.SaveChangesAsync();

        return _mapper.Map<BuyerDto>(buyer);
    }

    public async Task<BuyerDto?> GetBuyerByIdAsync(Guid buyerId)
    {
        var buyer = await _context.Buyers.FindAsync(buyerId);
        return buyer is null ? null : _mapper.Map<BuyerDto>(buyer);
    }

    public async Task<IEnumerable<BuyerDto>> GetAllBuyersAsync()
    {
        var buyers = await _context.Buyers.ToListAsync();
        return _mapper.Map<IEnumerable<BuyerDto>>(buyers);
    }

    public async Task<BuyerDto?> UpdateBuyerAsync(Guid buyerId, UpdateBuyerDto dto)
    {
        var buyer = await _context.Buyers.FindAsync(buyerId);
        if (buyer is null)
            return null;

        _mapper.Map(dto, buyer);
        await _context.SaveChangesAsync();

        return _mapper.Map<BuyerDto>(buyer);
    }

    public async Task<bool> DeleteBuyerAsync(Guid buyerId)
    {
        var buyer = await _context.Buyers.FindAsync(buyerId);
        if (buyer is null)
            return false;

        _context.Buyers.Remove(buyer);
        await _context.SaveChangesAsync();

        return true;
    }
}
