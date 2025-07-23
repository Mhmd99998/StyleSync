using backend.src.Domain.Entities;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Infrastructure.Data.Configurations;
public class ProductVariantConfiguration : IEntityTypeConfiguration<ProductVariant>
{
    public void Configure(EntityTypeBuilder<ProductVariant> builder)
    {
        builder.ToTable("product_variants");

        builder.HasKey(v => v.VariantId)
            .HasName("pk_product_variants");

        builder.Property(v => v.VariantId)
            .HasColumnName("variant_id")
            .HasDefaultValueSql("uuid_generate_v4()");

        builder.Property(v => v.ProductId)
            .HasColumnName("product_id");

        builder.Property(v => v.Size)
            .HasColumnName("size")
            .IsRequired()
            .HasMaxLength(50);

        builder.Property(v => v.Color)
            .HasColumnName("color")
            .IsRequired()
            .HasMaxLength(50);

        builder.Property(v => v.Price)
            .HasColumnName("price")
            .HasColumnType("decimal(10,2)")
            .IsRequired();

        builder.Property(v => v.BoughtAt)
            .HasColumnName("bought_at")
            .HasColumnType("decimal(10,2)")
            .IsRequired();

        builder.Property(v => v.OnSale)
            .HasColumnName("on_sale")
            .HasColumnType("decimal(10,2)");

        builder.Property(v => v.Stock)
            .HasColumnName("stock")
            .HasDefaultValue(0);

        builder.Property(v => v.MinStock)
            .HasColumnName("min_stock")
            .HasDefaultValue(0);
        
        builder.Property(v => v.SKU)
            .HasColumnName("sku")
            .IsRequired()
            .HasMaxLength(100);

        // Relationships
        builder.HasMany(v => v.Images)
            .WithOne(i => i.Variant)
            .HasForeignKey(i => i.VariantId)
            .HasConstraintName("fk_images_variants")
            .OnDelete(DeleteBehavior.Cascade);

        // Indexes
        builder.HasIndex(v => v.SKU)
            .HasDatabaseName("ix_product_variants_sku");

        builder.HasIndex(v => new { v.Size, v.Color })
            .HasDatabaseName("ix_product_variants_size_color");

        builder.HasIndex(v => v.Price)
            .HasDatabaseName("ix_product_variants_price");

        builder.HasIndex(v => v.Stock)
            .HasDatabaseName("ix_product_variants_stock");
    }
}