using backend.src.Application.DTOs.Product;
using FluentValidation;

namespace backend.src.Application.Validators.Product;

public class CreateProductDtoValidator : AbstractValidator<CreateProductDto>
{
    public CreateProductDtoValidator()
    {
        RuleFor(x => x.Name)
            .NotEmpty().WithMessage("Product name is required")
            .MaximumLength(255).WithMessage("Product name must be less than 255 characters");

        RuleFor(x => x.Description)
            .MaximumLength(2000).WithMessage("Description must be less than 2000 characters");

        RuleFor(x => x.SKU)
            .NotEmpty().WithMessage("Product SKU is required");
    }
}
