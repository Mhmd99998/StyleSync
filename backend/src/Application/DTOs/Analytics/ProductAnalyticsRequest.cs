namespace backend.src.Application.DTOs.Analytics;

public class ProductAnalyticsRequest
{
    public List<Guid> ProductIds { get; set; }
    public string Period { get; set; }
}
