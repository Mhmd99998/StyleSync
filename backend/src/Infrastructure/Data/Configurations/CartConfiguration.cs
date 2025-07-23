using backend.src.Domain.Entities;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Infrastructure.Data.Configurations;

public class CartConfiguration : IEntityTypeConfiguration<Cart>
{
    public void Configure(EntityTypeBuilder<Cart> builder)
    {
        builder.ToTable("carts");

        builder.HasKey(c => c.CartId)
            .HasName("pk_carts");

        builder.Property(c => c.CartId)
            .HasColumnName("cart_id")
            .HasDefaultValueSql("uuid_generate_v4()");

        builder.Property(c => c.UserId)
            .HasColumnName("user_id");

        builder.Property(c => c.CreatedAt)
            .HasColumnName("created_at")
            .HasDefaultValueSql("CURRENT_TIMESTAMP");

        builder.HasIndex(c => c.UserId)
            .IsUnique()
            .HasDatabaseName("ix_carts_user_id");

        builder.HasOne(c => c.User)
            .WithOne(u => u.Cart)
            .HasForeignKey<Cart>(c => c.UserId)
            .HasConstraintName("fk_carts_users")
            .OnDelete(DeleteBehavior.Cascade);
    }
}
