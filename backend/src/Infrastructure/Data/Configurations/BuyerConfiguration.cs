using backend.src.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace backend.src.Infrastructure.Data.Configurations;

public class BuyerConfiguration : IEntityTypeConfiguration<Buyer>
{
    public void Configure(EntityTypeBuilder<Buyer> builder)
    {
        builder.ToTable("buyers");

        builder.HasKey(b => b.BuyerId)
            .HasName("buyers_pk");

        builder.Property(b => b.BuyerId)
            .IsRequired()
            .HasColumnName("buyer_id");

        builder.Property(b => b.Name)
            .HasColumnName("name");

        builder.Property(b => b.Email)
            .HasColumnName("email");

        builder.Property(b => b.PhoneNumber)
            .HasColumnName("phone_number");

        builder.Property(b => b.Location)
            .HasColumnName("location");

        builder.Property(b => b.Balance)
            .HasColumnName("balance");

        builder.Property(b => b.CreatedAt)
            .HasColumnName("created_at");
    }
}
