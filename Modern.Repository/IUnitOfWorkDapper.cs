using Modern.Repository.Customers.Command;

namespace Modern.Repository
{
    public interface IUnitOfWorkDapper
    {
        ICustomersCommand CustomersCommand { get; }
        bool Commit();
    }
}
