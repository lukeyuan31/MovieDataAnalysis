package DBMS.Group03.service;
import DBMS.Group03.domain.Movies;
import java.util.List;

public interface MoviesService {
    public List<String> findMovies(Movies movies);
}
