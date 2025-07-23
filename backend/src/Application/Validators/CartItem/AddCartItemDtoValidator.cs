using backend.src.Application.DTOs.CartItem;
using FluentValidation;

namespace backend.src.Application.Validators.CartItem;

public class AddCartItemDtoValidator : AbstractValidator<AddCartItemDto>
{
    public AddCartItemDtoValidator()
    {
        RuleFor(x => x.VariantId)
            .NotEmpty().WithMessage("Variant ID is required");

        RuleFor(x => x.Quantity)
            .GreaterThan(0).WithMessage("Quantity must be at least 1");
    }
}
