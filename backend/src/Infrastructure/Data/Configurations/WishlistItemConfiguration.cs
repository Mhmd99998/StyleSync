using backend.src.Domain.Entities;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Infrastructure.Data.Configurations;

public class WishlistItemConfiguration : IEntityTypeConfiguration<WishlistItem>
{
    public void Configure(EntityTypeBuilder<WishlistItem> builder)
    {
        builder.ToTable("wishlist_items");

        builder.HasKey(wi => wi.WishlistItemId)
            .HasName("pk_wishlist_items");

        builder.Property(wi => wi.WishlistItemId)
            .HasColumnName("wishlist_item_id")
            .HasDefaultValueSql("uuid_generate_v4()");

        builder.Property(wi => wi.UserId)
            .HasColumnName("user_id");

        builder.Property(wi => wi.ProductId)
            .HasColumnName("product_id");

        builder.Property(wi => wi.AddedAt)
            .HasColumnName("added_at")
            .HasDefaultValueSql("CURRENT_TIMESTAMP");

        // Relationships
        builder.HasOne(wi => wi.User)
            .WithMany(u => u.WishlistItems)
            .HasForeignKey(wi => wi.UserId)
            .HasConstraintName("fk_wishlist_items_users")
            .OnDelete(DeleteBehavior.Cascade);

        builder.HasOne(wi => wi.Product)
            .WithMany()
            .HasForeignKey(wi => wi.ProductId)
            .HasConstraintName("fk_wishlist_items_variants")
            .OnDelete(DeleteBehavior.Restrict);

        // Unique constraint
        builder.HasIndex(wi => new { wi.UserId, wi.ProductId })
            .IsUnique()
            .HasDatabaseName("ix_wishlist_items_user_variant");
    }
}
