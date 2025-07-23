using AutoMapper;
using backend.src.Application.DTOs.Cart;
using backend.src.Application.DTOs.CartItem;
using backend.src.Application.Interfaces;
using backend.src.Domain.Entities;
using backend.src.Domain.Exceptions;
using backend.src.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Application.Services;

public class CartService : ICartService
{
    private readonly ApplicationDbContext _context;
    private readonly IMapper _mapper;
    private readonly IProductVariantService _variantService;

    public CartService(
        ApplicationDbContext context,
        IMapper mapper,
        IProductVariantService variantService)
    {
        this._context = context;
        this._mapper = mapper;
        this._variantService = variantService;
    }

    public async Task<CartDto> GetCartByUserAsync(Guid userId)
    {
        var cart = await this._context.Carts
            .Include(c => c.User)
            .Include(c => c.CartItems)
                .ThenInclude(ci => ci.Variant)
            .FirstOrDefaultAsync(c => c.UserId == userId)
            ?? throw new NotFoundException("Cart", userId);

        return this._mapper.Map<CartDto>(cart);
    }

    public async Task<CartDto> CreateCartAsync(CreateCartDto createCartDto)
    {
        var cart = new Cart
        {
            CartId = Guid.NewGuid(),
            UserId = createCartDto.UserId,
            CreatedAt = DateTime.UtcNow,
            CartItems = [] 
        };

        this._context.Carts.Add(cart);
        await this._context.SaveChangesAsync();

        return this._mapper.Map<CartDto>(cart);
    }

    public async Task<CartItemDto> AddItemToCartAsync(Guid userId, AddCartItemDto addItemDto)
    {
        var cart = await _context.Carts
            .Include(c => c.CartItems)
            .FirstOrDefaultAsync(c => c.UserId == userId)
            ?? throw new NotFoundException(nameof(Cart), userId);

        var variant = await _variantService.GetVariantByIdAsync(addItemDto.VariantId);

        var existingItem = cart.CartItems.FirstOrDefault(ci => ci.VariantId == addItemDto.VariantId);

        if (existingItem != null)
        {
            existingItem.Quantity += addItemDto.Quantity;
        }
        else
        {
            var newItem = new CartItem
            {
                CartItemId = Guid.NewGuid(),
                VariantId = addItemDto.VariantId,
                Quantity = addItemDto.Quantity,
                CartId = cart.CartId
            };

            _context.CartItems.Add(newItem);
        }

        await _context.SaveChangesAsync();

        var itemToReturn = existingItem ??
            await _context.CartItems
                .Include(ci => ci.Variant)
                .FirstOrDefaultAsync(ci => ci.CartId == cart.CartId 
                                    && ci.VariantId == addItemDto.VariantId);

        return _mapper.Map<CartItemDto>(itemToReturn!);
    }

    public async Task<CartItemDto> UpdateCartItemAsync(Guid cartItemId, UpdateCartItemDto updateDto)
    {
        var cartItem = await this._context.CartItems
            .Include(ci => ci.Variant)
            .FirstOrDefaultAsync(ci => ci.CartItemId == cartItemId)
            ?? throw new NotFoundException("Cart item", cartItemId);

        cartItem.Quantity = updateDto.Quantity;
        await this._context.SaveChangesAsync();

        return this._mapper.Map<CartItemDto>(cartItem);
    }

    public async Task RemoveItemFromCartAsync(Guid cartItemId)
    {
        var cartItem = await this._context.CartItems.FindAsync(cartItemId);
        if (cartItem != null)
        {
            this._context.CartItems.Remove(cartItem);
            await this._context.SaveChangesAsync();
        }
    }

    public async Task ClearCartAsync(Guid userId)
    {
        var cart = await this._context.Carts
            .Include(c => c.CartItems)
            .FirstOrDefaultAsync(c => c.UserId == userId);

        if (cart != null)
        {
            this._context.CartItems.RemoveRange(cart.CartItems);
            await this._context.SaveChangesAsync();
        }
    }
}
