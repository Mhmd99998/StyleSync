using System.Net;
using System.Text.Json;

namespace backend.src.Web.Middleware;

public class ErrorHandlingMiddleware
{
    private readonly RequestDelegate _next;

    public ErrorHandlingMiddleware(RequestDelegate next)
    {
        _next = next;
    }

    public async Task InvokeAsync(HttpContext context)
    {
        try
        {
            await _next(context);
        }
        catch (Exception ex)
        {
            await HandleExceptionAsync(context, ex);
        }
    }

    private static Task HandleExceptionAsync(HttpContext context, Exception exception)
    {
        HttpStatusCode statusCode;
        string message;

        switch (exception)
        {
            case ArgumentNullException:
            case ArgumentException:
                statusCode = HttpStatusCode.BadRequest; // 400
                message = exception.Message;
                break;

            case UnauthorizedAccessException:
                statusCode = HttpStatusCode.Unauthorized; // 401
                message = "Unauthorized access.";
                break;

            case KeyNotFoundException:
                statusCode = HttpStatusCode.NotFound; // 404
                message = "Resource not found.";
                break;

            default:
                statusCode = HttpStatusCode.InternalServerError; // 500
                message = "An unexpected error occurred.";
                break;
        }

        var result = JsonSerializer.Serialize(new
        {
            message,
            error = exception.Message
        });

        context.Response.ContentType = "application/json";
        context.Response.StatusCode = (int)statusCode;
        return context.Response.WriteAsync(result);
    }
}
