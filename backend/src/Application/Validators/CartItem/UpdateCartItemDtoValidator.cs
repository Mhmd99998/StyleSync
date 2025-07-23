using backend.src.Application.DTOs.CartItem;
using FluentValidation;

namespace backend.src.Application.Validators.CartItem;

public class UpdateCartItemDtoValidator : AbstractValidator<UpdateCartItemDto>
{
    public UpdateCartItemDtoValidator()
    {
        RuleFor(x => x.Quantity)
            .GreaterThan(0).WithMessage("Quantity must be at least 1");
    }
}
