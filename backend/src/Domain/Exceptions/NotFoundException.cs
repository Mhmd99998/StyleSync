namespace backend.src.Domain.Exceptions;

public class NotFoundException : Exception
{
    public NotFoundException()
        : base("The requested resource was not found.")
    {
    }

    public NotFoundException(string resourceName, object resourceId)
        : base($"The {resourceName} with ID {resourceId} was not found.")
    {
        ResourceName = resourceName;
        ResourceId = resourceId;
    }

    public string ResourceName { get; }
    public object ResourceId { get; }
}
