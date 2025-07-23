namespace backend.src.Application.Utilities
{
    using BCrypt.Net;

    public class PasswordHasher
    {
        private const int WorkFactor = 12;

        public static string Hash(string password) =>
            BCrypt.EnhancedHashPassword(password, WorkFactor);

        public static bool Verify(string password, string hashedPassword) =>
            BCrypt.EnhancedVerify(password, hashedPassword);
    }
}
