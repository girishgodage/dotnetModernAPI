using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Modern.Repository.UserMaster.Command
{
    public class UserMasterCommand : IUserMasterCommand
    {
        private readonly ModernDbContext _modernDbContext;

        public UserMasterCommand(ModernDbContext modernDbContext)
        {
            _modernDbContext = modernDbContext;
        }

        public void Add(Entities.UserMaster.UserMaster usermaster)
        {
            _modernDbContext.UserMasters.Add(usermaster);
        }

        public void Update(Entities.UserMaster.UserMaster usermaster)
        {
            _modernDbContext.Entry(usermaster).State = EntityState.Modified;
        }

        public void ChangeUserStatus(Entities.UserMaster.UserMaster usermaster)
        {
            _modernDbContext.Entry(usermaster).State = EntityState.Modified;
        }

        public void UpdatePasswordandHistory(long userId, string passwordHash, string passwordSalt, string processType)
        {
            var parameters = new List<SqlParameter>() {
                new SqlParameter
                {
                    ParameterName = "@UserId", Value=userId
                },
                new SqlParameter
                {
                    ParameterName = "@PasswordHash", Value=passwordHash
                }, new SqlParameter
                {
                    ParameterName = "@PasswordSalt", Value=passwordSalt
                }, new SqlParameter
                {
                    ParameterName = "@ProcessType", Value=processType
                }
            };

            _modernDbContext.Database.ExecuteSqlRaw("EXECUTE Usp_UpdatePassword @UserId,@PasswordHash,@PasswordSalt,@ProcessType",
                parameters);
        }
    }
}
