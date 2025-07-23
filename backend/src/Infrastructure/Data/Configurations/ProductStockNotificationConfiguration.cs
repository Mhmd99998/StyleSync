using backend.src.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace backend.src.Infrastructure.Data.Configurations;

public class ProductStockNotificationConfiguration : IEntityTypeConfiguration<ProductStockNotification>
{
    public void Configure(EntityTypeBuilder<ProductStockNotification> builder)
    {
        builder.ToTable("product_stock_notifications");

        builder.HasKey(psn => psn.NotificationId)
            .HasName("product_stock_notifications_pkey");

        builder.Property(psn => psn.NotificationId)
            .HasColumnName("notification_id")
            .HasDefaultValueSql("uuid_generate_v4()");

        builder.Property(psn => psn.VariantId)
            .IsRequired()
            .HasColumnName("variant_id");

        builder.Property(psn => psn.UserEmail)
            .IsRequired()
            .HasColumnName("user_email");

        builder.Property(psn => psn.Notified)
            .IsRequired()
            .HasDefaultValue(false)
            .HasColumnName("notified");

        builder.Property(psn => psn.CreatedAt)
            .HasColumnName("created_at");

        // Foreign Key relationship with Variant
        builder.HasOne(psn => psn.Variant)
            .WithMany(p => p.StockNotifications)
            .HasForeignKey(psn => psn.VariantId)
            .HasConstraintName("product_stock_notifications_variant_id_fkey")
            .OnDelete(DeleteBehavior.Cascade);

        // Index
        builder.HasIndex(psn => new { psn.VariantId, psn.Notified })
            .HasDatabaseName("idx_product_stock_notifications_variant_id_notified");
    }
}
