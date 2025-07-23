using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using backend.src.Domain.Entities;

namespace backend.src.Infrastructure.Data.Configurations;

public class ImageConfiguration : IEntityTypeConfiguration<Image>
{
    public void Configure(EntityTypeBuilder<Image> builder)
    {
        builder.ToTable("images");

        builder.HasKey(i => i.ImageId)
            .HasName("pk_images");

        builder.Property(i => i.ImageId)
            .HasColumnName("image_id")
            .HasDefaultValueSql("uuid_generate_v4()");

        builder.Property(i => i.VariantId)
            .HasColumnName("variant_id");

        builder.Property(i => i.ImageUrl)
            .HasColumnName("image_url")
            .IsRequired()
            .HasMaxLength(255);

        builder.Property(i => i.IsDefault)
            .HasColumnName("is_default")
            .HasDefaultValue(false);

        // Composite index for default image per variant
        builder.HasIndex(i => new { i.VariantId, i.IsDefault })
            .HasDatabaseName("ix_images_variant_default")
            .HasFilter("is_default = true");
    }
}
