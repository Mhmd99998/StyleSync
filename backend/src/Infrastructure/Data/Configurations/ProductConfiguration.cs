using backend.src.Domain.Entities;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Infrastructure.Data.Configurations;

public class ProductConfiguration : IEntityTypeConfiguration<Product>
{
    public void Configure(EntityTypeBuilder<Product> builder)
    {
        builder.ToTable("products");

        builder.HasKey(p => p.ProductId)
            .HasName("pk_products");

        builder.Property(p => p.ProductId)
            .HasColumnName("product_id")
            .HasDefaultValueSql("uuid_generate_v4()");

        builder.Property(p => p.Name)
            .HasColumnName("name")
            .IsRequired()
            .HasMaxLength(255);

        builder.Property(p => p.SKU)
            .HasColumnName("sku")
            .IsRequired()
            .HasMaxLength(100);

        builder.Property(p => p.Description)
            .HasColumnName("description")
            .HasMaxLength(2000);

        builder.Property(p => p.CreatedAt)
            .HasColumnName("created_at")
            .HasDefaultValueSql("CURRENT_TIMESTAMP");

        builder.Property(p => p.IsArchived)
            .HasColumnName("is_archived")
            .HasDefaultValue(false);

        // Relationships
        builder.HasMany(p => p.Variants)
            .WithOne(v => v.Product)
            .HasForeignKey(v => v.ProductId)
            .HasConstraintName("fk_product_variants_products")
            .OnDelete(DeleteBehavior.Cascade);

        // Indexes
        builder.HasIndex(p => p.Name)
            .HasDatabaseName("ix_products_name");

        builder.HasIndex(p => p.CreatedAt)
            .HasDatabaseName("ix_products_created_at");
    }
}