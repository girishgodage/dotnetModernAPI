using Modern.Entities.UserMaster;

namespace Modern.Repository.UserMaster.Command
{
    public class UserTokensCommand : IUserTokensCommand
    {
        private readonly ModernDbContext _modernDbContext;
        public UserTokensCommand(ModernDbContext modernDbContext)
        {
            _modernDbContext = modernDbContext;
        }

        public void Add(UserTokens userTokens)
        {
            _modernDbContext.UserTokens.Add(userTokens);
        }
    }
}
