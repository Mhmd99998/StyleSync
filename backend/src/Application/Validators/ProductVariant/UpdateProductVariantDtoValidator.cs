using backend.src.Application.DTOs.ProductVariant;
using FluentValidation;

namespace backend.src.Application.Validators.ProductVariant;

public class UpdateProductVariantDtoValidator : AbstractValidator<UpdateProductVariantDto>
{
    public UpdateProductVariantDtoValidator()
    {
        When(x => x.Size != null, () => {
            RuleFor(x => x.Size)
                .NotEmpty().WithMessage("Size cannot be empty")
                .MaximumLength(50).WithMessage("Size must be less than 50 characters");
        });

        When(x => x.Color != null, () => {
            RuleFor(x => x.Color)
                .NotEmpty().WithMessage("Color cannot be empty")
                .MaximumLength(50).WithMessage("Color must be less than 50 characters");
        });

        When(x => x.Price != null, () => {
            RuleFor(x => x.Price)
                .GreaterThan(0).WithMessage("Price must be greater than 0");
        });

        When(x => x.BoughtAt != null, () => {
            RuleFor(x => x.BoughtAt)
                .GreaterThan(0).WithMessage("Bought at price must be greater than 0");
        });

        When(x => x.Stock != null, () => {
            RuleFor(x => x.Stock)
                .GreaterThanOrEqualTo(0).WithMessage("Stock cannot be negative");
        });

        When(x => x.SKU != null, () => {
            RuleFor(x => x.SKU)
                .MaximumLength(100).WithMessage("SKU must be less than 100 characters");
        });
    }
}
