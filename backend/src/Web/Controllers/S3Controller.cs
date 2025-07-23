using backend.src.Application.DTOs.Image;
using Microsoft.AspNetCore.Mvc;
using System.Net.Mime;

[ApiController]
[Route("api/s3")]
public class S3Controller : ControllerBase
{
    private readonly S3Service _s3Service;

    public S3Controller(S3Service s3Service)
    {
        _s3Service = s3Service;
    }

    // Upload Image to S3
    [HttpPost("upload")]
    public async Task<IActionResult> UploadFile([FromForm] IFormFile file)
    {
        if (file == null || file.Length == 0)
            return BadRequest("File is required.");

        var fileName = $"{Guid.NewGuid()}_{file.FileName}";
        using var stream = file.OpenReadStream();

        string fileUrl = await _s3Service.UploadFileAsync(stream, fileName, file.ContentType);

        return Ok(new { FileName = fileName, FileUrl = fileUrl });
    }

    // Retrieve Image from S3
    [HttpGet("{fileName}")]
    public async Task<IActionResult> GetFile(string fileName)
    {
        var fileStream = await _s3Service.GetFileAsync(fileName);
        if (fileStream == null)
            return NotFound(new { Message = "File not found" });

        return File(fileStream, MediaTypeNames.Image.Jpeg);
    }

    // Delete Image from S3
    [HttpDelete]
    public async Task<IActionResult> DeleteFile([FromBody] DeleteImageDto deleteImageDto)
    {
        bool deleted = await _s3Service.DeleteFileByUrlAsync(deleteImageDto.Url);
        if (!deleted)
            return NotFound(new { Message = "File not found or could not be deleted" });

        return NoContent();
    }
}
