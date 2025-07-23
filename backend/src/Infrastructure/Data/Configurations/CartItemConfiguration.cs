using backend.src.Domain.Entities;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Infrastructure.Data.Configurations;

public class CartItemConfiguration : IEntityTypeConfiguration<CartItem>
{
    public void Configure(EntityTypeBuilder<CartItem> builder)
    {
        builder.ToTable("cart_items");

        builder.HasKey(ci => ci.CartItemId)
            .HasName("pk_cart_items");

        builder.Property(ci => ci.CartItemId)
            .HasColumnName("cart_item_id")
            .HasDefaultValueSql("uuid_generate_v4()");

        builder.Property(ci => ci.CartId)
            .HasColumnName("cart_id");

        builder.Property(ci => ci.VariantId)
            .HasColumnName("variant_id");

        builder.Property(ci => ci.Quantity)
            .HasColumnName("quantity")
            .IsRequired();

        builder.HasIndex(ci => new { ci.CartId, ci.VariantId })
            .IsUnique()
            .HasDatabaseName("ix_cart_items_cart_variant");

        builder.HasOne(ci => ci.Cart)
            .WithMany(c => c.CartItems)
            .HasForeignKey(ci => ci.CartId)
            .HasConstraintName("fk_cart_items_carts")
            .OnDelete(DeleteBehavior.Cascade);

        builder.HasOne(ci => ci.Variant)
            .WithMany()
            .HasForeignKey(ci => ci.VariantId)
            .HasConstraintName("fk_cart_items_variants")
            .OnDelete(DeleteBehavior.Restrict);
    }
}
