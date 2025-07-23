using backend.src.Application.DTOs.OrderItem;
using FluentValidation;

namespace backend.src.Application.Validators.OrderItem;

public class UpdateOrderItemDtoValidator : AbstractValidator<UpdateOrderItemDto>
{
    public UpdateOrderItemDtoValidator()
    {
        When(x => x.Quantity.HasValue, () => {
            RuleFor(x => x.Quantity)
                .GreaterThan(0).WithMessage("Quantity must be at least 1");
        });

        When(x => x.PriceAdjustment.HasValue, () => {
            RuleFor(x => x.PriceAdjustment)
                .GreaterThanOrEqualTo(0).WithMessage("Price adjustment cannot be negative");
        });
    }
}
