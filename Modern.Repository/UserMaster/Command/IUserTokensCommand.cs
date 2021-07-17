using Modern.Entities.UserMaster;

namespace Modern.Repository.UserMaster.Command
{
    public interface IUserTokensCommand
    {
        void Add(UserTokens userTokens);
    }
}
