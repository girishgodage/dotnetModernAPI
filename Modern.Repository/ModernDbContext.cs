using Microsoft.EntityFrameworkCore;
using Modern.Entities.Movies;
using Modern.Entities.RoleMaster;
using Modern.Entities.UserMaster;
using System;

namespace Modern.Repository
{
    public class ModernDbContext : DbContext
    {
        public ModernDbContext(DbContextOptions<ModernDbContext> options) : base(options)
        {

        }

        public DbSet<Entities.UserMaster.UserMaster> UserMasters { get; set; }
        public DbSet<AssignedRoles> AssignedRoles { get; set; }
        public DbSet<UserTokens> UserTokens { get; set; }
        public DbSet<RoleMaster> RoleMasters { get; set; }
        public DbSet<Entities.Movies.Movies> Movies { get; set; }
    }
}
