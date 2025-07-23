using backend.src.Application.DTOs.Order;
using FluentValidation;

namespace backend.src.Application.Validators.Order;

public class UpdateOrderStatusDtoValidator : AbstractValidator<UpdateOrderStatusDto>
{
    public UpdateOrderStatusDtoValidator()
    {
        RuleFor(x => x.Status)
            .NotEmpty().WithMessage("Order status is required");
    }
}
