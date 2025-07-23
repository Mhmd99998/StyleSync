using backend.src.Application.DTOs.Image;
using FluentValidation;

namespace backend.src.Application.Validators.Image;

public class UpdateImageDtoValidator : AbstractValidator<UpdateImageDto>
{
    public UpdateImageDtoValidator()
    {
        When(x => x.ImageUrl != null, () => {
            RuleFor(x => x.ImageUrl)
                .NotEmpty().WithMessage("Image URL cannot be empty")
                .MaximumLength(255).WithMessage("Image URL must be less than 255 characters")
                .Must(uri => Uri.TryCreate(uri, UriKind.Absolute, out _))
                .WithMessage("Invalid URL format");
        });
    }
}
