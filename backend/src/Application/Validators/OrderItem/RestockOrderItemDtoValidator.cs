using backend.src.Application.DTOs.OrderItem;
using FluentValidation;

namespace backend.src.Application.Validators.OrderItem;

public class RestockOrderItemDtoValidator : AbstractValidator<RestockOrderItemDto>
{
    public RestockOrderItemDtoValidator()
    {
        RuleFor(x => x.QuantityToRestock)
            .GreaterThan(0).WithMessage("Quantity to restock must be at least 1");
    }
}
