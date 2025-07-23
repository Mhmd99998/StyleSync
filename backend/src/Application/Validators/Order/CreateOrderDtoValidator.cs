using backend.src.Application.DTOs.Order;
using backend.src.Application.Validators.OrderItem;
using FluentValidation;

namespace backend.src.Application.Validators.Order;
public class CreateOrderDtoValidator : AbstractValidator<CreateOrderDto>
{
    public CreateOrderDtoValidator()
    {
        RuleFor(x => x.PaymentIntentId)
            .NotEmpty().WithMessage("Payment intent ID is required");
    }
}
