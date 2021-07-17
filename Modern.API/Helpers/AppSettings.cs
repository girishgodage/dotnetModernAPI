using System.Linq;

namespace Modern.API.Helpers
{
    public class AppSettings
    {
        public string SecretKey { get; set; }
        public string Expires { get; set; }
        public string Issuer { get; set; }
        public string Audience { get; set; }
    }
}
