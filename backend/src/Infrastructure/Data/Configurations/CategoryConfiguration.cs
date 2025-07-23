using backend.src.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace backend.src.Infrastructure.Data.Configurations;

public class CategoryConfiguration : IEntityTypeConfiguration<Category>
{
    public void Configure(EntityTypeBuilder<Category> builder)
    {
        builder.ToTable("categories");

        builder.Property(c => c.CategoryId)
            .HasColumnName("category_id")
            .HasDefaultValueSql("uuid_generate_v4()");

        builder.Property(c => c.Name)
            .HasColumnName("name")
            .IsRequired();

        builder.HasIndex(c => c.Name)
            .HasDatabaseName("ix_categories_name");
    }
}
