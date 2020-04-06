package DBMS.Group03.service;
import DBMS.Group03.domain.Movies;
import DBMS.Group03.domain.Ratings;
import DBMS.Group03.domain.PersonalRating;
import java.util.List;

public interface MoviesService {
    public List<String> findMovies(Movies movies);
    public List<Ratings> findRatings(Movies movies);
    public List<PersonalRating> findPersonalRatings(Movies movies);
    public List<PersonalRating> findPersonalRatingsAjax(String name);

}
