using Amazon.S3;
using Amazon.S3.Model;

public class S3Service
{
    private readonly IAmazonS3 _s3Client;
    private readonly string _bucketName;

    public S3Service(IAmazonS3 s3Client, IConfiguration configuration)
    {
        _s3Client = s3Client;
        _bucketName = configuration["AWS:BucketName"] ?? throw new ArgumentNullException("S3 Bucket name is missing in config");
    }

    public async Task<string> UploadFileAsync(Stream fileStream, string fileName, string contentType)
    {
        var request = new PutObjectRequest
        {
            BucketName = _bucketName,
            Key = fileName,
            InputStream = fileStream,
            ContentType = contentType,
            AutoCloseStream = true
        };

        await _s3Client.PutObjectAsync(request);
        return $"https://{_bucketName}.s3.amazonaws.com/{fileName}";
    }

    public async Task<Stream?> GetFileAsync(string fileName)
    {
        try
        {
            var response = await _s3Client.GetObjectAsync(_bucketName, fileName);
            return response.ResponseStream;
        }
        catch (AmazonS3Exception ex) when (ex.StatusCode == System.Net.HttpStatusCode.NotFound)
        {
            return null;
        }
    }
    public async Task<bool> DeleteFileByUrlAsync(string imageUrl)
    {
        if (string.IsNullOrWhiteSpace(imageUrl))
            throw new ArgumentNullException(nameof(imageUrl));

        var key = ExtractKeyFromUrl(imageUrl);
        if (string.IsNullOrEmpty(key))
            return false;

        var request = new DeleteObjectRequest
        {
            BucketName = _bucketName,
            Key = key
        };

        var response = await _s3Client.DeleteObjectAsync(request);
        return response.HttpStatusCode == System.Net.HttpStatusCode.NoContent;
    }

    private static string ExtractKeyFromUrl(string imageUrl)
    {
        var uri = new Uri(imageUrl);
        return uri.AbsolutePath.TrimStart('/');
    }
}
