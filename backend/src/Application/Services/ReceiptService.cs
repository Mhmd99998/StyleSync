using AutoMapper;
using backend.src.Application.DTOs.Receipt;
using backend.src.Application.Interfaces;
using backend.src.Domain.Entities;
using backend.src.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.src.Application.Services;

public class ReceiptService : IReceiptService
{
    private readonly ApplicationDbContext _context;
    private readonly IMapper _mapper;

    public ReceiptService(ApplicationDbContext context, IMapper mapper)
    {
        _context = context;
        _mapper = mapper;
    }

    public async Task<IEnumerable<ReceiptDto>> GetAllReceiptsAsync()
    {
        var receipts = await _context.Receipts
            .Include(r => r.ReceiptItems)
            .ToListAsync();

        return _mapper.Map<IEnumerable<ReceiptDto>>(receipts);
    }

    public async Task<ReceiptDto> GetReceiptByIdAsync(Guid receiptId)
    {
        var receipt = await _context.Receipts
            .Include(r => r.ReceiptItems)
            .FirstOrDefaultAsync(r => r.ReceiptId == receiptId);

        if (receipt == null)
            throw new KeyNotFoundException("Receipt not found.");

        return _mapper.Map<ReceiptDto>(receipt);
    }

    public async Task<IEnumerable<ReceiptDto>> GetReceiptsByBuyerIdAsync(Guid buyerId)
    {
        var receipts = await _context.Receipts
            .Include(r => r.ReceiptItems)
            .Where(r => r.BuyerId == buyerId)
            .ToListAsync();

        return _mapper.Map<IEnumerable<ReceiptDto>>(receipts);
    }

    public async Task<IEnumerable<ReceiptDto>> GetReceiptsByVariantIdAsync(Guid variantId)
    {
        var receipts = await _context.Receipts
            .Include(r => r.ReceiptItems)
            .Where(r => r.ReceiptItems.Any(ri => ri.VariantId == variantId))
            .ToListAsync();

        return _mapper.Map<IEnumerable<ReceiptDto>>(receipts);
    }

    public async Task<ReceiptDto> CreateReceiptAsync(CreateReceiptDto dto)
    {
        var receipt = _mapper.Map<Receipt>(dto);
        receipt.ReceiptId = Guid.NewGuid();

        // Calculate total amount from receipt items
        receipt.TotalAmount = dto.ReceiptItems.Sum(item => item.SellingPrice * item.Quantity);

        // Assign new GUIDs to receipt items
        receipt.ReceiptItems = dto.ReceiptItems.Select(item => new ReceiptItem
        {
            ReceiptItemId = Guid.NewGuid(),
            VariantId = item.VariantId,
            Quantity = item.Quantity,
            SellingPrice = item.SellingPrice,
            ReceiptId = receipt.ReceiptId
        }).ToList();

        _context.Receipts.Add(receipt);
        await _context.SaveChangesAsync();

        return _mapper.Map<ReceiptDto>(receipt);
    }

    public async Task<ReceiptDto> UpdateReceiptAsync(Guid receiptId, UpdateReceiptDto dto)
    {
        var existingReceipt = await _context.Receipts
            .Include(r => r.ReceiptItems)
            .FirstOrDefaultAsync(r => r.ReceiptId == receiptId);

        if (existingReceipt == null)
            throw new KeyNotFoundException("Receipt not found.");

        existingReceipt.Date = dto.Date;

        // Remove old items
        _context.ReceiptItems.RemoveRange(existingReceipt.ReceiptItems);

        // Add new items
        existingReceipt.ReceiptItems = dto.ReceiptItems.Select(item => new ReceiptItem
        {
            ReceiptItemId = item.ReceiptItemId == Guid.Empty ? Guid.NewGuid() : item.ReceiptItemId,
            VariantId = item.VariantId,
            Quantity = item.Quantity,
            SellingPrice = item.SellingPrice,
            ReceiptId = receiptId
        }).ToList();

        // Recalculate total
        existingReceipt.TotalAmount = existingReceipt.ReceiptItems.Sum(i => i.SellingPrice * i.Quantity);

        await _context.SaveChangesAsync();

        return _mapper.Map<ReceiptDto>(existingReceipt);
    }

    public async Task DeleteReceiptAsync(Guid receiptId)
    {
        var receipt = await _context.Receipts
            .Include(r => r.ReceiptItems)
            .FirstOrDefaultAsync(r => r.ReceiptId == receiptId);

        if (receipt == null)
            throw new KeyNotFoundException("Receipt not found.");

        _context.ReceiptItems.RemoveRange(receipt.ReceiptItems);
        _context.Receipts.Remove(receipt);
        await _context.SaveChangesAsync();
    }
}
