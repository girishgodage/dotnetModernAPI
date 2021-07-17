using System.Linq;

namespace Modern.Repository.Movies.Queries
{
    public class MoviesQueries : IMoviesQueries
    {
        private readonly ModernDbContext _modernDbContext;
        public MoviesQueries(ModernDbContext modernDbContext)
        {
            _modernDbContext = modernDbContext;
        }

        public Entities.Movies.Movies GetMoviesbyId(int? moviesId)
        {
            var movie = _modernDbContext.Movies
                .FirstOrDefault(m => m.MoviesID == moviesId);

            return movie;
        }


        public IQueryable<Entities.Movies.Movies> GetMovies()
        {
            var source = (from movies in _modernDbContext.Movies.
                    OrderBy(a => a.MoviesID)
                          select movies).AsQueryable();

            return source;
        }
    }
}
