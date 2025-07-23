﻿using backend.src.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace backend.src.Infrastructure.Data.Configurations;

public class ProductCategoryConfiguration : IEntityTypeConfiguration<ProductCategory>
{
    public void Configure(EntityTypeBuilder<ProductCategory> builder)
    {
        builder.ToTable("product_categories");

        builder.HasKey(pc => new { pc.ProductId, pc.CategoryId });

        builder.Property(pc => pc.ProductId)
            .HasColumnName("product_id")
            .IsRequired();

        builder.Property(pc => pc.CategoryId)
            .HasColumnName("category_id")
            .IsRequired();

        builder.HasOne(pc => pc.Product)
            .WithMany(p => p.ProductCategories)
            .HasForeignKey(pc => pc.ProductId)
            .OnDelete(DeleteBehavior.Cascade);

        builder.HasOne(pc => pc.Category)
             .WithMany(c => c.ProductCategories)
             .HasForeignKey(pc => pc.CategoryId)
             .OnDelete(DeleteBehavior.Cascade);

        builder.HasIndex(pc => pc.CategoryId)
            .HasDatabaseName("ix_product_categories_category_id");
    }
}
