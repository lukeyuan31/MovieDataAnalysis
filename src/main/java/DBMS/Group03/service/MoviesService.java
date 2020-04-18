package DBMS.Group03.service;
import DBMS.Group03.domain.*;

import java.util.List;

public interface MoviesService {
    public List<Movies> findMovies(Movies movies);
    public List<Ratings> findRatings(Movies movies);
    public List<PersonalRating> findPersonalRatings(Movies movies);
    public List<PersonalRating> findPersonalRatingsAjax(String name);
    public List<RatingnQuality> findRatingnQualityAjax(String name);
    public List<GenderRatio> findGenderRatio();
    public List<GenreNum> findGenreNum();
    public List<GoodActorRatio> findGoodActorRatio();

}
