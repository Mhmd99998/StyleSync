using backend.src.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace backend.src.Infrastructure.Data.Configurations;

public class ReceiptConfiguration : IEntityTypeConfiguration<Receipt>
{
    public void Configure(EntityTypeBuilder<Receipt> builder)
    {
        builder.ToTable("receipts");

        builder.HasKey(r => r.ReceiptId)
            .HasName("receipts_pkey");

        builder.Property(r => r.ReceiptId)
            .HasColumnName("receipt_id")
            .HasDefaultValueSql("uuid_generate_v4()");

        builder.Property(r => r.BuyerId)
            .HasColumnName("buyer_id")
            .IsRequired();

        builder.Property(r => r.TotalAmount)
            .HasColumnName("total_amount")
            .IsRequired()
            .HasColumnType("numeric(10,2)");

        builder.Property(r => r.CreatedAt)
            .HasColumnName("created_at")
            .HasDefaultValueSql("CURRENT_TIMESTAMP");

        builder.Property(r => r.Note)
            .HasColumnName("note");

        builder.HasOne(r => r.Buyer)
            .WithMany(b => b.Receipts)
            .HasForeignKey(r => r.BuyerId)
            .HasConstraintName("receipts_buyer_id_fkey")
            .OnDelete(DeleteBehavior.Cascade);

        builder.HasIndex(r => r.BuyerId)
            .HasDatabaseName("ix_receipts_buyer_id");
    }
}
