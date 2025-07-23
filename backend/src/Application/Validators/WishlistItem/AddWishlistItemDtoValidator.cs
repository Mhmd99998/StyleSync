using backend.src.Application.DTOs.WishlistItem;
using FluentValidation;

namespace backend.src.Application.Validators.WishlistItem;

public class AddWishlistItemDtoValidator : AbstractValidator<AddWishlistItemDto>
{
    public AddWishlistItemDtoValidator()
    {
        RuleFor(x => x.ProductId)
            .NotEmpty().WithMessage("Product ID is required");
    }
}

