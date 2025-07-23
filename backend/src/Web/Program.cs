using Amazon.S3;
using Microsoft.EntityFrameworkCore;
using FluentValidation;
using FluentValidation.AspNetCore;
using backend.src.Infrastructure.Data;
using backend.src.Application.Validators.User;
using backend.src.Application.Mapping;
using backend.src.Application.Interfaces;
using backend.src.Application.Services;
using Microsoft.OpenApi.Models;
using backend.src.Application.Validators.Product;
using backend.src.Application.Validators.ProductVariant;
using backend.src.Application.Validators.Image;
using backend.src.Infrastructure.Data.Configurations;
using System.Text.Json.Serialization;
using backend.src.Application.Validators.Order;
using backend.src.Application.Validators.OrderItem;
using backend.src.Application.Validators.CartItem;
using backend.src.Application.Validators.WishlistItem;
using Microsoft.IdentityModel.Tokens;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using System.Text;
using backend.src.Application.Utilities;
using Amazon;
using backend.src.Web.Middleware;
using System.Text.Json;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllers()
        .AddJsonOptions(options =>
        {
            options.JsonSerializerOptions.ReferenceHandler = ReferenceHandler.IgnoreCycles;
            options.JsonSerializerOptions.Converters.Add(
                new JsonStringEnumConverter(JsonNamingPolicy.CamelCase));
        });

// Register OpenAPI (Swagger)
builder.Services.AddOpenApi();

builder.Services.AddSwaggerGen(c =>
{
    c.SwaggerDoc("v1", new OpenApiInfo
    {
        Title = "StyleSync API",
        Version = "v1",
    });
});

// Register CORS
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowReact", policy =>
    {
        policy.WithOrigins("https://localhost:4200")
              .AllowAnyHeader()
              .AllowAnyMethod()
              .AllowCredentials();
    });
});

// Register DbContext
var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseNpgsql(connectionString)
);

builder.Services.AddDbContextFactory<ApplicationDbContext>(options =>
    options.UseNpgsql(connectionString), ServiceLifetime.Transient);

builder.Services.Configure<EmailConfig>(builder.Configuration.GetSection("EmailConfig"));

var jwtKey = builder.Configuration["JwtSettings:Secret"];
var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(jwtKey));
builder.Services.Configure<JwtSettings>(builder.Configuration.GetSection("JwtSettings"));

builder.Services.AddAuthentication(options =>
{
    options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
})
.AddJwtBearer(options =>
{
    options.RequireHttpsMetadata = false;
    options.SaveToken = true;
    options.TokenValidationParameters = new TokenValidationParameters
    {
        ValidateIssuerSigningKey = true,
        IssuerSigningKey = key,
        ValidateIssuer = true,
        ValidateAudience = true,
        ValidIssuer = builder.Configuration["Jwt:Issuer"],
        ValidAudience = builder.Configuration["Jwt:Audience"],
        ClockSkew = TimeSpan.Zero
    };
});

builder.Services.AddSingleton<IAmazonS3>(sp =>
{
    return new AmazonS3Client(
        builder.Configuration["AWS:AccessKey"],
        builder.Configuration["AWS:SecretKey"],
        RegionEndpoint.GetBySystemName(builder.Configuration["AWS:Region"])
    );
});

// HttpClient For AI Backend Communication
builder.Services.AddHttpClient();

// Register AWS S3 services
builder.Services.AddAwsS3(builder.Configuration);

// Stripe API Key Configuration
Stripe.StripeConfiguration.ApiKey = builder.Configuration["Stripe:SecretKey"];

// Register AutoMapper
builder.Services.AddAutoMapper(typeof(MappingProfile));

// Background Schedulers
builder.Services.AddHostedService<LowStockAlertService>(); 
builder.Services.AddHostedService<BackInStockNotificationService>();

// Register FluentValidation
builder.Services.AddFluentValidationAutoValidation();
builder.Services.AddFluentValidationClientsideAdapters();

// Register validators
builder.Services.AddValidatorsFromAssemblyContaining<CreateUserDtoValidator>();
builder.Services.AddValidatorsFromAssemblyContaining<UpdateUserDtoValidator>();
builder.Services.AddValidatorsFromAssemblyContaining<CreateProductDtoValidator>();
builder.Services.AddValidatorsFromAssemblyContaining<UpdateProductDtoValidator>();
builder.Services.AddValidatorsFromAssemblyContaining<CreateProductVariantDtoValidator>();
builder.Services.AddValidatorsFromAssemblyContaining<UpdateProductVariantDtoValidator>();
builder.Services.AddValidatorsFromAssemblyContaining<CreateImageDtoValidator>();
builder.Services.AddValidatorsFromAssemblyContaining<UpdateImageDtoValidator>();
builder.Services.AddValidatorsFromAssemblyContaining<CreateOrderDtoValidator>();
builder.Services.AddValidatorsFromAssemblyContaining<UpdateOrderStatusDtoValidator>();
builder.Services.AddValidatorsFromAssemblyContaining<CreateOrderItemDtoValidator>();
builder.Services.AddValidatorsFromAssemblyContaining<UpdateOrderItemDtoValidator>();
builder.Services.AddValidatorsFromAssemblyContaining<RestockOrderItemDtoValidator>();
builder.Services.AddValidatorsFromAssemblyContaining<AddCartItemDtoValidator>();
builder.Services.AddValidatorsFromAssemblyContaining<UpdateCartItemDtoValidator>();
builder.Services.AddValidatorsFromAssemblyContaining<AddWishlistItemDtoValidator>();
builder.Services.AddValidatorsFromAssemblyContaining<RemoveWishlistItemDtoValidator>();

// Register utility Email service
builder.Services.AddScoped<IEmailService, EmailService>();

// Register entity services
builder.Services.AddScoped<IUserService, UserService>();
builder.Services.AddScoped<IProductService, ProductService>();
builder.Services.AddScoped<IProductVariantService, ProductVariantService>();
builder.Services.AddScoped<IImageService, ImageService>();
builder.Services.AddScoped<IOrderService, OrderService>();
builder.Services.AddScoped<IOrderItemService, OrderItemService>();
builder.Services.AddScoped<ICartService, CartService>();
builder.Services.AddScoped<IWishlistService, WishlistService>();
builder.Services.AddScoped<ICategoryService, CategoryService>();
builder.Services.AddScoped<ISearchService, SearchService>();
builder.Services.AddScoped<ICartEventService, CartEventService>();
builder.Services.AddScoped<IAnalyticsService, AnalyticsService>();
builder.Services.AddScoped<IRecommendationService, RecommendationService>();
builder.Services.AddScoped<IProductStockNotificationService, ProductStockNotificationService>();
builder.Services.AddScoped<IBuyerService, BuyerService>();
builder.Services.AddScoped<IReceiptService, ReceiptService>();
builder.Services.AddScoped<S3Service>();

var app = builder.Build();

// Configure the HTTPS request pipeline.
if (app.Environment.IsDevelopment())
{
    // app.MapOpenApi();
    app.UseSwagger();
    app.UseSwaggerUI(c =>
    {
        c.SwaggerEndpoint("/swagger/v1/swagger.json", "StyleSync V1.0");
        c.RoutePrefix = "swagger"; // Serve Swagger UI at /swagger
    });
}

app.UseCors("AllowReact");

// Test S3 connection
using var scope = app.Services.CreateScope();
var s3Client = scope.ServiceProvider.GetRequiredService<IAmazonS3>();
var response = await s3Client.ListBucketsAsync();
Console.Write("S3 Buckets: ");
foreach (var bucket in response.Buckets)
{
    Console.WriteLine($"{bucket.BucketName} ");
}

app.MapGet("/", () =>
    Results.Ok($"Backend is running (UTC: {DateTime.UtcNow})")
);

app.UseMiddleware<JwtMiddleware>();
app.UseMiddleware<ErrorHandlingMiddleware>();

app.UseHttpsRedirection();

app.UseHsts();

app.UseAuthorization();

app.MapControllers();

await app.RunAsync();
