using backend.src.Application.DTOs.Image;
using FluentValidation;

namespace backend.src.Application.Validators.Image;

public class CreateImageDtoValidator : AbstractValidator<CreateImageDto>
{
    public CreateImageDtoValidator()
    {
        RuleFor(x => x.VariantId)
            .NotEmpty().WithMessage("Variant ID is required");

        RuleFor(x => x.ImageUrl)
            .NotEmpty().WithMessage("Image URL is required")
            .MaximumLength(255).WithMessage("Image URL must be less than 255 characters")
            .Must(uri => Uri.TryCreate(uri, UriKind.Absolute, out _))
            .WithMessage("Invalid URL format");
    }
}
