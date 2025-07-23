using backend.src.Application.DTOs.Product;
using FluentValidation;

namespace backend.src.Application.Validators.Product;

public class UpdateProductDtoValidator : AbstractValidator<UpdateProductDto>
{
    public UpdateProductDtoValidator()
    {
        When(x => x.Name != null, () => {
            RuleFor(x => x.Name)
                .NotEmpty().WithMessage("Product name cannot be empty")
                .MaximumLength(255).WithMessage("Product name must be less than 255 characters");
        });

        When(x => x.Description != null, () => {
            RuleFor(x => x.Description)
                .MaximumLength(2000).WithMessage("Description must be less than 2000 characters");
        });
    }
}

