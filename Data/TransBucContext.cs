using Microsoft.EntityFrameworkCore;
using TransBuc.Models;

namespace TransBuc.Data
{
    public class TransBucContext : DbContext
    {


        public TransBucContext(DbContextOptions<TransBucContext> options): base(options)
        {
        }
        public DbSet<User> users { get; set; }
    }
}
