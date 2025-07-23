namespace backend.src.Domain.Exceptions;

public class InsufficientStockException : Exception
{
    public InsufficientStockException(string sku, int availableStock)
        : base($"Insufficient stock for SKU {sku}. Available: {availableStock}")
    {
    }
}
