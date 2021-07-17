using Modern.ViewModel.UserMaster;
using System.Linq;

namespace Modern.Repository.UserMaster.Queries
{
    public class UserMasterQueries : IUserMasterQueries
    {
        private readonly ModernDbContext _modernDbContext;
        public UserMasterQueries(ModernDbContext modernDbContext)
        {
            _modernDbContext = modernDbContext;
        }

        public bool CheckUserExists(string username)
        {
            var userdata = (from tempuser in _modernDbContext.UserMasters
                            where tempuser.UserName == username
                            select tempuser).Any();

            return userdata;
        }
        public bool CheckEmailExists(string emailid)
        {
            var userdata = (from tempuser in _modernDbContext.UserMasters
                            where tempuser.EmailId == emailid
                            select tempuser).Any();

            return userdata;
        }
        public bool CheckMobileNoExists(string mobileno)
        {
            var userdata = (from tempuser in _modernDbContext.UserMasters
                            where tempuser.MobileNo == mobileno
                            select tempuser).Any();

            return userdata;
        }

        public CommonUserDetailsViewModel GetCommonUserDetailsbyUserName(string username)
        {
            var userdata = (from tempuser in _modernDbContext.UserMasters
                            join assignedRoles in _modernDbContext.AssignedRoles on tempuser.UserId equals assignedRoles.UserId
                            join roleMaster in _modernDbContext.RoleMasters on assignedRoles.RoleId equals roleMaster.RoleId
                            where tempuser.UserName == username
                            select new CommonUserDetailsViewModel()
                            {
                                FirstName = tempuser.FirstName,
                                EmailId = tempuser.EmailId,
                                LastName = tempuser.LastName,
                                RoleId = roleMaster.RoleId,
                                UserId = tempuser.UserId,
                                RoleName = roleMaster.RoleName,
                                Status = tempuser.Status,
                                UserName = tempuser.UserName,
                                PasswordHash = tempuser.PasswordHash,
                                MobileNo = tempuser.MobileNo
                            }).FirstOrDefault();

            return userdata;
        }

        public CommonUserDetailsViewModel GetCommonUserDetailsbyUserId(long userId)
        {
            var userdata = (from tempuser in _modernDbContext.UserMasters
                            join assignedRoles in _modernDbContext.AssignedRoles on tempuser.UserId equals assignedRoles.UserId
                            join roleMaster in _modernDbContext.RoleMasters on assignedRoles.RoleId equals roleMaster.RoleId
                            where tempuser.UserId == userId
                            select new CommonUserDetailsViewModel()
                            {
                                FirstName = tempuser.FirstName,
                                EmailId = tempuser.EmailId,
                                LastName = tempuser.LastName,
                                RoleId = roleMaster.RoleId,
                                UserId = tempuser.UserId,
                                RoleName = roleMaster.RoleName,
                                Status = tempuser.Status,
                                UserName = tempuser.UserName,
                                PasswordHash = tempuser.PasswordHash,
                                MobileNo = tempuser.MobileNo
                            }).FirstOrDefault();

            return userdata;
        }
    }
}
