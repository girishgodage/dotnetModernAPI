using Modern.ViewModel.UserMaster;

namespace Modern.Repository.UserMaster.Queries
{
    public interface IUserMasterQueries
    {
        bool CheckUserExists(string username);
        bool CheckEmailExists(string emailid);
        bool CheckMobileNoExists(string mobileno);
        CommonUserDetailsViewModel GetCommonUserDetailsbyUserName(string username);
        CommonUserDetailsViewModel GetCommonUserDetailsbyUserId(long userId);
    }
}
