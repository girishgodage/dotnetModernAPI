using Modern.ViewModel.Customers.Request;

namespace Modern.Repository.Customers.Command
{
    public interface ICustomersCommand
    {
        void Add(CustomersRequest customersViewModel, long userId);
    }
}
