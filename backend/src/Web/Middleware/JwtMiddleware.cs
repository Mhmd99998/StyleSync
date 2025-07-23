using System.IdentityModel.Tokens.Jwt;

namespace backend.src.Web.Middleware;

public class JwtMiddleware
{
    private readonly RequestDelegate _next;

    public JwtMiddleware(RequestDelegate next)
    {
        _next = next;
    }

    public async Task Invoke(HttpContext context)
    {
        var token = context.Request.Headers["Authorization"].FirstOrDefault()?.Split(" ").Last();

        // Only proceed if the token is present and appears to be well-formed
        if (!string.IsNullOrEmpty(token) && CanReadTokenSafely(token))
        {
            var handler = new JwtSecurityTokenHandler();
            var jwtToken = handler.ReadJwtToken(token);

            var userId = jwtToken.Claims.FirstOrDefault(c => c.Type == "sub")?.Value;
            var email = jwtToken.Claims.FirstOrDefault(c => c.Type == "email")?.Value;
            var role = jwtToken.Claims.FirstOrDefault(c => c.Type == "role")?.Value;

            if (userId != null)
            {
                context.Items["UserId"] = userId;
                context.Items["UserEmail"] = email;
                context.Items["UserRole"] = role;
            }
        }

        await _next(context);
    }

    private bool CanReadTokenSafely(string token)
    {
        var handler = new JwtSecurityTokenHandler();
        return handler.CanReadToken(token); // Returns false if the token is malformed
    }
}
