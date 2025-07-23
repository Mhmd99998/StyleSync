using FluentValidation;
using backend.src.Application.DTOs.ProductVariant;
using backend.src.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Application.Validators.ProductVariant;

public class CreateProductVariantDtoValidator : AbstractValidator<CreateProductVariantDto>
{
    private readonly IDbContextFactory<ApplicationDbContext> _contextFactory;

    public CreateProductVariantDtoValidator(IDbContextFactory<ApplicationDbContext> contextFactory)
    {
        _contextFactory = contextFactory;

        RuleFor(x => x.ProductId)
            .NotEmpty().WithMessage("Product ID is required")
            .Must(ProductExists).WithMessage("Product does not exist");

        RuleFor(x => x.Size)
            .NotEmpty().WithMessage("Size is required")
            .MaximumLength(50).WithMessage("Size must be less than 50 characters");

        RuleFor(x => x.Color)
            .NotEmpty().WithMessage("Color is required")
            .MaximumLength(50).WithMessage("Color must be less than 50 characters");

        RuleFor(x => x.Price)
            .GreaterThan(0).WithMessage("Price must be greater than 0");

        RuleFor(x => x.BoughtAt)
            .GreaterThan(0).WithMessage("Price must be greater than 0");

        RuleFor(x => x.Stock)
            .GreaterThanOrEqualTo(0).WithMessage("Stock cannot be negative");
    }

    private bool ProductExists(Guid productId)
    {
        using var dbContext = _contextFactory.CreateDbContext();
        return dbContext.Products.Any(p => p.ProductId == productId);
    }
}
