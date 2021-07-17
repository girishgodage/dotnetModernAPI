

using Modern.Entities.UserMaster;

namespace Modern.Repository.UserMaster.Queries
{
    public interface IUserTokensQueries
    {
        UserTokens GetUserSaltbyUserid(long userId);
    }
}
