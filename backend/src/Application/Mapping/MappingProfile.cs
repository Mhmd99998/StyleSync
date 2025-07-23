using AutoMapper;
using backend.src.Application.DTOs.Buyer;
using backend.src.Application.DTOs.Cart;
using backend.src.Application.DTOs.CartItem;
using backend.src.Application.DTOs.Category;
using backend.src.Application.DTOs.Image;
using backend.src.Application.DTOs.Order;
using backend.src.Application.DTOs.OrderItem;
using backend.src.Application.DTOs.Product;
using backend.src.Application.DTOs.ProductVariant;
using backend.src.Application.DTOs.Receipt;
using backend.src.Application.DTOs.ReceiptItem;
using backend.src.Application.DTOs.Search;
using backend.src.Application.DTOs.User;
using backend.src.Application.DTOs.WishlistItem;
using backend.src.Domain.Entities;
using Stripe.Terminal;

namespace backend.src.Application.Mapping;

public class MappingProfile : Profile
{
    public MappingProfile()
    {
        // User mappings
        CreateMap<User, UserDto>();
        CreateMap<CreateUserDto, User>()
            .ForMember(dest => dest.Password, opt => opt.Ignore())
            .ForMember(dest => dest.CreatedAt, opt => opt.Ignore());
        CreateMap<UpdateUserDto, User>()
            .ForMember(dest => dest.Password, opt => opt.Ignore())
            .ForMember(dest => dest.CreatedAt, opt => opt.Ignore())
            .ForAllMembers(opts => opts.Condition((src, dest, srcMember) =>
                srcMember != null));

        // Product mappings
        CreateMap<Product, ProductDto>()
            .ForMember(dest => dest.Variants, opt => opt.MapFrom(src => src.Variants))
            .ForMember(dest => dest.Categories, opt =>
                opt.MapFrom(src => src.ProductCategories.Select(pc => pc.Category)));
        CreateMap<Product, AdminProductDto>()
            .ForMember(dest => dest.Variants, opt => opt.MapFrom(src => src.Variants))
            .ForMember(dest => dest.Categories, opt =>
                opt.MapFrom(src => src.ProductCategories.Select(pc => pc.Category)));
        CreateMap<CreateProductDto, Product>()
            .ForMember(dest => dest.IsArchived, opt => opt.MapFrom(src => src.IsArchived));
        CreateMap<UpdateProductDto, Product>()
            .ForAllMembers(opts => opts.Condition((src, dest, srcMember) =>
                srcMember != null));

        // Product variants mappings
        CreateMap<ProductVariant, ProductVariantDto>()
            .ForMember(dest => dest.Images, opt => opt.MapFrom(src => src.Images));
        CreateMap<ProductVariant, AdminProductVariantDto>()
            .ForMember(dest => dest.Images, opt => opt.MapFrom(src => src.Images));
        CreateMap<CreateProductVariantDto, ProductVariant>();
        CreateMap<UpdateProductVariantDto, ProductVariant>()
            .ForAllMembers(opts => opts.Condition((src, dest, srcMember) =>
                srcMember != null));

        // Image mappings
        CreateMap<Image, ImageDto>();
        CreateMap<CreateImageDto, Image>();
        CreateMap<UpdateImageDto, Image>()
            .ForAllMembers(opts => opts.Condition((src, dest, srcMember) =>
                srcMember != null));

        // Order mappings
        CreateMap<Order, OrderDto>()
            .ForMember(dest => dest.UserId, opt => opt.MapFrom(src => src.User.UserId))
            .ForMember(dest => dest.Items, opt => opt.MapFrom(src => src.OrderItems));

        // OrderItem mappings
        CreateMap<OrderItem, OrderItemDto>()
            .ForMember(dest => dest.VariantName, opt => opt.MapFrom(src => src.Variant.SKU));

        // Cart mappings
        CreateMap<Cart, CartDto>()
            .ForMember(dest => dest.Items, opt => opt.MapFrom(src => src.CartItems));

        // CartItem mappings
        CreateMap<AddCartItemDto, CartItem>()
            .ForMember(dest => dest.CartItemId, opt => opt.Ignore())
            .ForMember(dest => dest.CartId, opt => opt.Ignore());
        CreateMap<CartItem, CartItemDto>()
            .ForMember(dest => dest.VariantName, opt => opt.MapFrom(src => src.Variant.SKU))
            .ForMember(dest => dest.Price, opt => opt.MapFrom(src => src.Variant.Price));

        // Wishlist mappings
        CreateMap<WishlistItem, WishlistItemDto>()
            .ForMember(dest => dest.ProductName, opt => opt.MapFrom(src => src.Product.Name));

        // Category mappings
        CreateMap<Category, CategoryDto>();
        CreateMap<CreateCategoryDto, Category>();
        CreateMap<UpdateCategoryDto, Category>();
        CreateMap<string, Category>()
            .ConstructUsing(categoryName => new Category { Name = categoryName });

        // ProductCategories mappings
        CreateMap<ProductCategory, ProductCategoriesDto>();
        CreateMap<CreateProductCategoriesDto, ProductCategory>();

        // Search mappings
        CreateMap<Product, IndexProductDto>()
            .ForMember(dest => dest.Id, opt => opt.MapFrom(src => src.ProductId))
            .ForMember(dest => dest.Name, opt => opt.MapFrom(src => src.Name))
            .ForMember(dest => dest.Description, opt => opt.MapFrom(src => src.Description))
            .ForMember(dest => dest.Variants, opt => opt.MapFrom(src => src.Variants))
            .ForMember(dest => dest.Categories, opt => opt.MapFrom(src =>
                src.ProductCategories.Select(pc => pc.CategoryId.ToString())));
        CreateMap<ProductVariant, IndexVariantDto>();

        // Buyer mappings
        CreateMap<CreateBuyerDto, Buyer>();
        CreateMap<UpdateBuyerDto, Buyer>();
        CreateMap<Buyer, BuyerDto>();

        // Receipt mappings
        CreateMap<Receipt, ReceiptDto>();
        CreateMap<ReceiptItem, ReceiptItemDto>();

        CreateMap<CreateReceiptDto, Receipt>()
            .ForMember(dest => dest.TotalAmount, opt => opt.Ignore()); // calculated manually
        CreateMap<CreateReceiptItemDto, ReceiptItem>();

        CreateMap<UpdateReceiptDto, Receipt>()
            .ForMember(dest => dest.TotalAmount, opt => opt.Ignore()); // calculated manually
        CreateMap<UpdateReceiptItemDto, ReceiptItem>();
    }
}
