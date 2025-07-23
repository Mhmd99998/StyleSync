using backend.src.Application.DTOs.Buyer;
using backend.src.Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace backend.src.Controllers;

[ApiController]
[Route("api/[controller]")]
public class BuyersController : ControllerBase
{
    private readonly IBuyerService _buyerService;

    public BuyersController(IBuyerService buyerService)
    {
        _buyerService = buyerService;
    }

    // GET: api/buyers
    [HttpGet]
    public async Task<IActionResult> GetBuyers()
    {
        var buyers = await _buyerService.GetAllBuyersAsync();
        return Ok(buyers);
    }

    // GET: api/buyers/{buyerId}
    [HttpGet("{buyerId:guid}")]
    public async Task<IActionResult> GetBuyer(Guid buyerId)
    {
        try
        {
            var buyer = await _buyerService.GetBuyerByIdAsync(buyerId);
            return Ok(buyer);
        }
        catch (Exception ex)
        {
            return NotFound(new { Message = ex.Message });
        }
    }

    // POST: api/buyers
    [HttpPost]
    public async Task<IActionResult> CreateBuyer([FromBody] CreateBuyerDto createBuyerDto)
    {
        var buyer = await _buyerService.CreateBuyerAsync(createBuyerDto);
        return CreatedAtAction(nameof(GetBuyer), new { buyerId = buyer.BuyerId }, buyer);
    }

    // PUT: api/buyers/{buyerId}
    [HttpPut("{buyerId:guid}")]
    public async Task<IActionResult> UpdateBuyer(Guid buyerId, [FromBody] UpdateBuyerDto updateBuyerDto)
    {
        try
        {
            var updatedBuyer = await _buyerService.UpdateBuyerAsync(buyerId, updateBuyerDto);
            return Ok(updatedBuyer);
        }
        catch (Exception ex)
        {
            return NotFound(new { Message = ex.Message });
        }
    }

    // DELETE: api/buyers/{buyerId}
    [HttpDelete("{buyerId:guid}")]
    public async Task<IActionResult> DeleteBuyer(Guid buyerId)
    {
        try
        {
            await _buyerService.DeleteBuyerAsync(buyerId);
            return NoContent();
        }
        catch (Exception ex)
        {
            return NotFound(new { Message = ex.Message });
        }
    }
}
