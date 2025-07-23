using backend.src.Domain.Entities;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;

namespace backend.src.Infrastructure.Data.Configurations;

public class OrderConfiguration : IEntityTypeConfiguration<Order>
{
    public void Configure(EntityTypeBuilder<Order> builder)
    {
        builder.ToTable("orders");

        builder.HasKey(o => o.OrderId)
            .HasName("pk_orders");

        builder.Property(o => o.OrderId)
            .HasColumnName("order_id")
            .HasDefaultValueSql("uuid_generate_v4()");

        builder.Property(o => o.UserId)
            .HasColumnName("user_id");

        builder.Property(o => o.PaymentIntentId)
            .HasColumnName("payment_intent_id")
            .IsRequired();

        builder.Property(o => o.Status)
            .HasColumnName("status")
            .HasConversion<string>()
            .IsRequired();

        builder.Property(o => o.ShippingAddress)
            .HasColumnName("shipping_address");

        builder.Property(o => o.CreatedAt)
            .HasColumnName("created_at")
            .HasDefaultValueSql("CURRENT_TIMESTAMP");

        // Relationships
        builder.HasOne(o => o.User)
            .WithMany(u => u.Orders)
            .HasForeignKey(o => o.UserId)
            .HasConstraintName("fk_orders_users");

        // Indexes
        builder.HasIndex(o => o.UserId)
            .HasDatabaseName("ix_orders_user_id");

        builder.HasIndex(o => o.CreatedAt)
            .HasDatabaseName("ix_orders_created_at");

        builder.HasIndex(o => o.Status)
            .HasDatabaseName("ix_orders_status");
    }
}

