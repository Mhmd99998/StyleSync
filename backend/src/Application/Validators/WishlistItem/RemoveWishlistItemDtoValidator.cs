using backend.src.Application.DTOs.WishlistItem;
using FluentValidation;

namespace backend.src.Application.Validators.WishlistItem;

public class RemoveWishlistItemDtoValidator : AbstractValidator<RemoveWishlistItemDto>
{
    public RemoveWishlistItemDtoValidator()
    {
        RuleFor(x => x.ProductId)
            .NotEmpty().WithMessage("Product ID is required");
    }
}
