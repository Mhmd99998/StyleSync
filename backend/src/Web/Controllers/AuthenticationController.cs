using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using backend.src.Application.DTOs.Authentication;
using backend.src.Application.Interfaces;
using backend.src.Application.Services;
using backend.src.Application.Utilities;
using backend.src.Domain.Entities;
using backend.src.Infrastructure.Data;
using backend.src.Infrastructure.Data.Configurations;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;

namespace backend.src.Application.Controllers;

[Route("api/auth")]
[ApiController]
public class AuthController : ControllerBase
{
    private readonly ApplicationDbContext _context;
    private readonly JwtSettings _jwtSettings;
    private readonly IEmailService _emailService;

    public AuthController(ApplicationDbContext context, IOptions<JwtSettings> jwtSettings, IEmailService emailService)
    {
        _context = context;
        _jwtSettings = jwtSettings.Value;
        _emailService = emailService;
    }

    [HttpPost("login")]
    public async Task<IActionResult> Login([FromBody] LoginDto loginDto)
    {
        if (!ModelState.IsValid)
            return BadRequest(ModelState);

        var user = await _context.Users
            .FirstOrDefaultAsync(u => u.Email == loginDto.Email);

        if (user == null || !PasswordHasher.Verify(loginDto.Password, user.Password))
            return Unauthorized("Invalid email or password");

        var token = GenerateJwtToken(user);

        return Ok(new { Token = token, ExpiresIn = _jwtSettings.ExpirationMinutes });
    }

    [HttpPost("send-verification")]
    public async Task<IActionResult> SendVerification([FromBody] EmailDto request)
    {
        if (!ModelState.IsValid)
            return BadRequest("Invalid request format");

        var user = await _context.Users
            .FirstOrDefaultAsync(u => u.Email == request.Email);

        if (user == null)
            return Ok(); // Don't reveal existence

        if (user.IsEmailVerified)
            return BadRequest("Email already verified");

        try
        {
            var token = GenerateVerificationToken(user);
            var verificationLink = $"{Request.Scheme}://{Request.Host}/api/auth/verify-email?token={token}";
            await _emailService.SendVerificationEmailAsync(user.Email, verificationLink);
            return Ok();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
            return StatusCode(500, "Failed to send verification email");
        }
    }

    [HttpGet("verify-email")]
    public async Task<IActionResult> VerifyEmail([FromQuery] string token)
    {
        var principal = ValidateVerificationToken(token);
        if (principal == null)
            return BadRequest("Invalid or expired verification link");

        var userIdClaim = principal.FindFirst("userId");
        if (userIdClaim == null || !Guid.TryParse(userIdClaim.Value, out var userId))
            return BadRequest("Invalid token");

        var user = await _context.Users.FindAsync(userId);
        if (user == null)
            return BadRequest("User not found");

        if (user.IsEmailVerified)
            return Ok("Email already verified");

        user.IsEmailVerified = true;
        await _context.SaveChangesAsync();

        return Ok("Email verified successfully");
    }

    private string GenerateVerificationToken(User user)
    {
        var key = Encoding.ASCII.GetBytes(_jwtSettings.Secret);
        var tokenHandler = new JwtSecurityTokenHandler();

        var tokenDescriptor = new SecurityTokenDescriptor
        {
            Subject = new ClaimsIdentity(new[]
            {
                new Claim("userId", user.UserId.ToString()),
                new Claim("email", user.Email),
                new Claim("role", user.Role),
                new Claim("purpose", "email_verification")
            }),
            Expires = DateTime.UtcNow.AddMinutes(_jwtSettings.ExpirationMinutes),
            SigningCredentials = new SigningCredentials(
                new SymmetricSecurityKey(key),
                SecurityAlgorithms.HmacSha256Signature
            ),
            Issuer = _jwtSettings.Issuer,
            Audience = _jwtSettings.Audience
        };

        return tokenHandler.CreateEncodedJwt(tokenDescriptor);
    }

    private ClaimsPrincipal? ValidateVerificationToken(string token)
    {
        try
        {
            var tokenHandler = new JwtSecurityTokenHandler();
            var validationParameters = new TokenValidationParameters
            {
                ValidateIssuer = true,
                ValidateAudience = true,
                ValidateLifetime = true,
                ValidateIssuerSigningKey = true,
                ValidIssuer = _jwtSettings.Issuer,
                ValidAudience = _jwtSettings.Audience,
                IssuerSigningKey = new SymmetricSecurityKey(
                    Encoding.ASCII.GetBytes(_jwtSettings.Secret)),
                ValidAlgorithms = new[] { SecurityAlgorithms.HmacSha256 }
            };

            return tokenHandler.ValidateToken(token, validationParameters, out _);
        }
        catch
        {
            return null;
        }
    }

    private string GenerateJwtToken(User user)
    {
        var tokenHandler = new JwtSecurityTokenHandler();
        var key = Encoding.ASCII.GetBytes(_jwtSettings.Secret);

        var claims = new List<Claim>
        {
            new(JwtRegisteredClaimNames.Sub, user.UserId.ToString()),
            new(JwtRegisteredClaimNames.Email, user.Email),
            new(ClaimTypes.Role, user.Role),
            new(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString())
        };

        var tokenDescriptor = new SecurityTokenDescriptor
        {
            Subject = new ClaimsIdentity(claims),
            Expires = DateTime.UtcNow.AddMinutes(_jwtSettings.ExpirationMinutes),
            SigningCredentials = new SigningCredentials(
                new SymmetricSecurityKey(key),
                SecurityAlgorithms.HmacSha256Signature
            ),
            Issuer = _jwtSettings.Issuer,
            Audience = _jwtSettings.Audience
        };

        var token = tokenHandler.CreateToken(tokenDescriptor);
        return tokenHandler.WriteToken(token);
    }
}