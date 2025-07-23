using backend.src.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace backend.src.Infrastructure.Data.Configurations;

public class ReceiptItemConfiguration : IEntityTypeConfiguration<ReceiptItem>
{
    public void Configure(EntityTypeBuilder<ReceiptItem> builder)
    {
        builder.ToTable("receipt_items");

        builder.HasKey(ri => ri.ReceiptItemId)
            .HasName("receipt_items_pkey");

        builder.Property(ri => ri.ReceiptItemId)
            .HasColumnName("receipt_item_id")
            .HasDefaultValueSql("uuid_generate_v4()");

        builder.Property(ri => ri.ReceiptId)
            .HasColumnName("receipt_id")
            .IsRequired();

        builder.Property(ri => ri.VariantId)
            .HasColumnName("variant_id")
            .IsRequired();

        builder.Property(ri => ri.Quantity)
            .HasColumnName("quantity")
            .IsRequired();

        builder.Property(ri => ri.SellingPrice)
            .HasColumnName("selling_price")
            .IsRequired()
            .HasColumnType("numeric(10,2)");

        builder.Property(ri => ri.LineTotal)
            .HasColumnName("line_total")
            .HasColumnType("numeric(10,2)")
            .ValueGeneratedOnAddOrUpdate()
            .Metadata.SetAfterSaveBehavior(PropertySaveBehavior.Ignore);

        builder.HasOne(ri => ri.Receipt)
            .WithMany(r => r.ReceiptItems)
            .HasForeignKey(ri => ri.ReceiptId)
            .HasConstraintName("receipt_items_receipt_id_fkey")
            .OnDelete(DeleteBehavior.Cascade);

        builder.HasOne(ri => ri.Variant)
            .WithMany()
            .HasForeignKey(ri => ri.VariantId)
            .HasConstraintName("receipt_items_variant_id_fkey")
            .OnDelete(DeleteBehavior.Cascade);

        // Indexes
        builder.HasIndex(ri => ri.ReceiptId)
            .HasDatabaseName("ix_receipt_items_receipt_id");

        builder.HasIndex(ri => ri.VariantId)
            .HasDatabaseName("ix_receipt_items_variant_id");
    }
}
