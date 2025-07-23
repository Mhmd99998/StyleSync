namespace backend.src.Web.Controllers;

using Microsoft.AspNetCore.Mvc;
using Stripe;

[ApiController]
[Route("api/[controller]")]
public class PaymentsController : ControllerBase
{
    [HttpPost("create-payment-intent")]
    public IActionResult CreatePaymentIntent([FromBody] CreatePaymentIntentRequest request)
    {
        try
        {
            var options = new PaymentIntentCreateOptions
            {
                Amount = request.Amount, // Amount in cents
                Currency = "usd",
                AutomaticPaymentMethods = new PaymentIntentAutomaticPaymentMethodsOptions
                {
                    Enabled = true,
                }
            };

            var service = new PaymentIntentService();
            var intent = service.Create(options);

            return Ok(new { clientSecret = intent.ClientSecret });
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Stripe error: {ex.Message}");
            return StatusCode(500, new { error = "Stripe payment intent failed." });
        }
    }
}

public class CreatePaymentIntentRequest
{
    public long Amount { get; set; } 
}

