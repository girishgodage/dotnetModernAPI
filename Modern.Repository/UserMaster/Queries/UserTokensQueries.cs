using Modern.Entities.UserMaster;
using System.Linq;

namespace Modern.Repository.UserMaster.Queries
{
    public class UserTokensQueries : IUserTokensQueries
    {
        private readonly ModernDbContext _modernDbContext;
        public UserTokensQueries(ModernDbContext modernDbContext)
        {
            _modernDbContext = modernDbContext;
        }
        public UserTokens GetUserSaltbyUserid(long userId)
        {
            var usertoken = (from tempuser in _modernDbContext.UserTokens
                             where tempuser.UserId == userId
                             select tempuser).FirstOrDefault();

            return usertoken;
        }
    }
}
