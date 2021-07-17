using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modern.Repository.Movies.Command
{
    public interface IMoviesCommand
    {
        void Add(Entities.Movies.Movies movies);
        void Update(Entities.Movies.Movies movies);
        void Delete(Entities.Movies.Movies movies);
    }
}
