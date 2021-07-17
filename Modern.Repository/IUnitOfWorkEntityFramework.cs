using Modern.Repository.Movies.Command;
using Modern.Repository.UserMaster.Command;

namespace Modern.Repository
{
    public interface IUnitOfWorkEntityFramework
    {
        IUserMasterCommand UserMasterCommand { get; }
        IAssignedRolesCommand AssignedRolesCommand { get; }
        IUserTokensCommand UserTokensCommand { get; }
        IMoviesCommand MoviesCommand { get; }
        bool Commit();
        void Dispose();
    }
}
