using Microsoft.EntityFrameworkCore;

namespace MovieMasterAPI.FrontEndModels
{
    public class CustomerContext : DbContext
    {
        public CustomerContext(DbContextOptions<CustomerContext> options) : base(options) { }

        public DbSet<Customer> Customer { get; set; }
    }
}

