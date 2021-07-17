using Microsoft.EntityFrameworkCore;
using Modern.Entities.UserMaster;

namespace Modern.Repository.UserMaster.Command
{
    public class AssignedRolesCommand : IAssignedRolesCommand
    {
        private readonly ModernDbContext _modernDbContext;
        public AssignedRolesCommand(ModernDbContext modernDbContext)
        {
            _modernDbContext = modernDbContext;
        }
        public void Add(AssignedRoles assignedRoles)
        {
            _modernDbContext.AssignedRoles.Add(assignedRoles);
        }

        public void Update(AssignedRoles assignedRoles)
        {
            _modernDbContext.Entry(assignedRoles).State = EntityState.Modified;
        }
    }
}
