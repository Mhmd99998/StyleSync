using backend.src.Application.DTOs.OrderItem;
using FluentValidation;

namespace backend.src.Application.Validators.OrderItem;

public class CreateOrderItemDtoValidator : AbstractValidator<CreateOrderItemDto>
{
    public CreateOrderItemDtoValidator()
    {
        RuleFor(x => x.VariantId)
            .NotEmpty().WithMessage("Variant ID is required");

        RuleFor(x => x.Quantity)
            .GreaterThan(0).WithMessage("Quantity must be at least 1");
    }
}
