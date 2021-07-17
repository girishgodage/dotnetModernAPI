using Modern.Entities.UserMaster;

namespace Modern.Repository.UserMaster.Command
{
    public interface IAssignedRolesCommand
    {
        void Add(AssignedRoles assignedRoles);
        void Update(AssignedRoles assignedRoles);
    }
}
