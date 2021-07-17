using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modern.Repository.Movies.Queries
{
    public interface IMoviesQueries
    {
        Entities.Movies.Movies GetMoviesbyId(int? moviesId);
        IQueryable<Entities.Movies.Movies> GetMovies();
    }
}
