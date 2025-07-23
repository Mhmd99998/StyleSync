using backend.src.Application.DTOs.User;
using FluentValidation;

namespace backend.src.Application.Validators.User;

public class UpdateUserDtoValidator : AbstractValidator<UpdateUserDto>
{
    public UpdateUserDtoValidator()
    {
        When(x => x.Email != null, () => {
            RuleFor(x => x.Email)
                .EmailAddress().WithMessage("Invalid email format");
        });

        When(x => x.Password != null, () => {
            RuleFor(x => x.Password)
                .MinimumLength(8).WithMessage("Password must be at least 8 characters");
        });

        RuleFor(x => x.Role)
            .Must(role => role == null || role is "customer" or "admin")
            .WithMessage("Invalid role specified");
    }
}

