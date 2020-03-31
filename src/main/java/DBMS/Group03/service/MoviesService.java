package DBMS.Group03.service;
import DBMS.Group03.domain.Movies;
import DBMS.Group03.domain.Ratings;
import java.util.List;

public interface MoviesService {
    public List<String> findMovies(Movies movies);
    public List<Ratings> findRatings(Movies movies);
}
