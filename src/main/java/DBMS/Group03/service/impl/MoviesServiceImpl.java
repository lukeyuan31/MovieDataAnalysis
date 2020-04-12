package DBMS.Group03.service.impl;
import DBMS.Group03.dao.UsersDao;
import DBMS.Group03.domain.*;
import DBMS.Group03.service.MoviesService;
import DBMS.Group03.dao.MovieDao;
//import com.sun.tools.javac.jvm.Gen;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service

public class MoviesServiceImpl implements MoviesService{
    @Autowired
    private MovieDao movieDao;

    @Override
    public List<String> findMovies(Movies movies){
        System.out.println("查找电影");
        return movieDao.findMovie(movies);
    }

    @Override
    public List<Ratings> findRatings(Movies movies){
        System.out.println("查找评分");
        return movieDao.findRating(movies);
    }

    @Override
    public List<PersonalRating> findPersonalRatings(Movies movies){
        System.out.println("绘图部分");
        return movieDao.findPersonalRatings(movies);
    }

    @Override
    public List<PersonalRating> findPersonalRatingsAjax(String name){
        return movieDao.findPersonalRatingsAjax(name);
    }

    @Override
    public List<RatingnQuality> findRatingnQualityAjax(String name){
        return movieDao.findRatingnQuality(name);
    }

    @Override
    public List<GenderRatio> findGenderRatio(){
        return movieDao.findGenderRatio();
    }

    @Override
    public List<GenreNum> findGenreNum(){
        return movieDao.findGenreNum();
    }
}
