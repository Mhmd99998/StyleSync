namespace backend.src.Application.Utilities;

public class EmailConfig
{
    public string SmtpServer { get; set; } = string.Empty;
    public int SmtpPort { get; set; } = 2525;
    public string SmtpUsername { get; set; } = string.Empty;
    public string SmtpPassword { get; set; } = string.Empty;
    public string FromName { get; set; } = string.Empty;
    public string FromAddress { get; set; } = string.Empty;
}
