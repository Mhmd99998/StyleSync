using backend.src.Application.DTOs.Receipt;
using backend.src.Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace backend.src.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ReceiptsController : ControllerBase
{
    private readonly IReceiptService _receiptService;

    public ReceiptsController(IReceiptService receiptService)
    {
        _receiptService = receiptService;
    }

    // GET: api/receipts
    [HttpGet]
    public async Task<IActionResult> GetReceipts()
    {
        var receipts = await _receiptService.GetAllReceiptsAsync();
        return Ok(receipts);
    }

    // GET: api/receipts/{receiptId}
    [HttpGet("{receiptId:guid}")]
    public async Task<IActionResult> GetReceipt(Guid receiptId)
    {
        try
        {
            var receipt = await _receiptService.GetReceiptByIdAsync(receiptId);
            return Ok(receipt);
        }
        catch (KeyNotFoundException ex)
        {
            return NotFound(new { Message = ex.Message });
        }
    }

    // GET: api/receipts/by-buyer?buyerId=...
    [HttpGet("by-buyer")]
    public async Task<IActionResult> GetReceiptsByBuyerId([FromQuery] Guid buyerId)
    {
        var receipts = await _receiptService.GetReceiptsByBuyerIdAsync(buyerId);
        return Ok(receipts);
    }

    // GET: api/receipts/by-variant?variantId=...
    [HttpGet("by-variant")]
    public async Task<IActionResult> GetReceiptsByVariantId([FromQuery] Guid variantId)
    {
        var receipts = await _receiptService.GetReceiptsByVariantIdAsync(variantId);
        return Ok(receipts);
    }

    // POST: api/receipts
    [HttpPost]
    public async Task<IActionResult> CreateReceipt([FromBody] CreateReceiptDto createReceiptDto)
    {
        if (!ModelState.IsValid)
            return BadRequest(ModelState);

        var receipt = await _receiptService.CreateReceiptAsync(createReceiptDto);
        return CreatedAtAction(nameof(GetReceipt), new { receiptId = receipt.ReceiptId }, receipt);
    }

    // PUT: api/receipts/{receiptId}
    [HttpPut("{receiptId:guid}")]
    public async Task<IActionResult> UpdateReceipt(Guid receiptId, [FromBody] UpdateReceiptDto updateReceiptDto)
    {
        if (!ModelState.IsValid)
            return BadRequest(ModelState);

        try
        {
            var updated = await _receiptService.UpdateReceiptAsync(receiptId, updateReceiptDto);
            return Ok(updated);
        }
        catch (KeyNotFoundException ex)
        {
            return NotFound(new { Message = ex.Message });
        }
    }

    // DELETE: api/receipts/{receiptId}
    [HttpDelete("{receiptId:guid}")]
    public async Task<IActionResult> DeleteReceipt(Guid receiptId)
    {
        try
        {
            await _receiptService.DeleteReceiptAsync(receiptId);
            return NoContent();
        }
        catch (KeyNotFoundException ex)
        {
            return NotFound(new { Message = ex.Message });
        }
    }
}
