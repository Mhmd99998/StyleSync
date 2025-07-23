using Amazon;
using Amazon.Extensions.NETCore.Setup;
using Amazon.S3;

namespace backend.src.Infrastructure.Data.Configurations
{
    public static class ServiceCollectionExtensions
    {
        public static IServiceCollection AddAwsS3(this IServiceCollection services, IConfiguration configuration)
        {
            // Bind AWS settings using IOptions<T>
            services.Configure<AwsSettings>(configuration.GetSection("AWS"));

            // Register AmazonS3 client using DI
            services.AddSingleton<IAmazonS3>(sp =>
            {
                var awsOptions = sp.GetRequiredService<Microsoft.Extensions.Options.IOptions<AwsSettings>>().Value;
                return new AmazonS3Client(awsOptions.AccessKey, awsOptions.SecretKey, RegionEndpoint.GetBySystemName(awsOptions.Region));
            });

            return services;
        }
    }
}
