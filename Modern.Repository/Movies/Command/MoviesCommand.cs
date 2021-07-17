using Microsoft.EntityFrameworkCore;

namespace Modern.Repository.Movies.Command
{
    public class MoviesCommand : IMoviesCommand
    {
        private readonly ModernDbContext _modernDbContext;
        public MoviesCommand(ModernDbContext modernDbContext)
        {
            _modernDbContext = modernDbContext;
        }
        public void Add(Entities.Movies.Movies movies)
        {
            _modernDbContext.Movies.Add(movies);
        }

        public void Update(Entities.Movies.Movies movies)
        {
            _modernDbContext.Entry(movies).State = EntityState.Modified;
        }

        public void Delete(Entities.Movies.Movies movies)
        {
            _modernDbContext.Entry(movies).State = EntityState.Deleted;
        }
    }
}
