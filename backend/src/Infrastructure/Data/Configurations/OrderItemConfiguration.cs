using backend.src.Domain.Entities;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Infrastructure.Data.Configurations;

public class OrderItemConfiguration : IEntityTypeConfiguration<OrderItem>
{
    public void Configure(EntityTypeBuilder<OrderItem> builder)
    {
        builder.ToTable("order_items");

        builder.HasKey(oi => oi.OrderItemId)
            .HasName("pk_order_items");

        builder.Property(oi => oi.OrderId)
            .HasColumnName("order_id");

        builder.Property(oi => oi.VariantId)
            .HasColumnName("variant_id");

        builder.Property(oi => oi.OrderItemId)
            .HasColumnName("order_item_id")
            .HasDefaultValueSql("uuid_generate_v4()");

        builder.Property(oi => oi.Quantity)
            .HasColumnName("quantity")
            .IsRequired();

        builder.Property(oi => oi.PriceAtPurchase)
            .HasColumnName("price_at_purchase")
            .HasColumnType("decimal(10,2)")
            .IsRequired();

        // Relationships
        builder.HasOne(oi => oi.Order)
            .WithMany(o => o.OrderItems)
            .HasForeignKey(oi => oi.OrderId)
            .HasConstraintName("fk_order_items_orders")
            .OnDelete(DeleteBehavior.Cascade);

        builder.HasOne(oi => oi.Variant)
            .WithMany()
            .HasForeignKey(oi => oi.VariantId)
            .HasConstraintName("fk_order_items_variants")
            .OnDelete(DeleteBehavior.Restrict);

        // Indexes
        builder.HasIndex(oi => oi.VariantId)
            .HasDatabaseName("ix_order_items_variant_id");

        builder.HasIndex(oi => oi.OrderId)
            .HasDatabaseName("ix_order_items_order_id");
    }
}
