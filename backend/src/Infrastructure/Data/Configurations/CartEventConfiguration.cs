using backend.src.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace backend.src.Infrastructure.Data.Configurations;

public class CartEventConfiguration : IEntityTypeConfiguration<CartEvent>
{
    public void Configure(EntityTypeBuilder<CartEvent> builder)
    {
        builder.ToTable("cart_events");

        builder.HasKey(ce => ce.EventId)
            .HasName("cart_events_pkey");

        builder.Property(ce => ce.EventId)
            .IsRequired()
            .HasColumnName("event_id");

        builder.Property(ce => ce.UserId)
            .IsRequired()
            .HasColumnName("user_id");

        builder.Property(ce => ce.VariantId)
            .IsRequired()
            .HasColumnName("variant_id");

        builder.Property(ce => ce.Quantity)
            .IsRequired()
            .HasColumnName("quantity");

        builder.Property(ce => ce.CreatedAt)
            .HasColumnName("created_at");

        builder.HasOne(ce => ce.User)
            .WithMany(u => u.CartEvents) 
            .HasForeignKey(ce => ce.UserId)
            .OnDelete(DeleteBehavior.Cascade);

        builder.HasOne(ce => ce.Variant)
            .WithMany() 
            .HasForeignKey(ce => ce.VariantId)
            .OnDelete(DeleteBehavior.Cascade);
    }
}
