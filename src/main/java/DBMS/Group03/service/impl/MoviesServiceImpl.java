package DBMS.Group03.service.impl;
import DBMS.Group03.dao.UsersDao;
import DBMS.Group03.domain.Movies;
import DBMS.Group03.service.MoviesService;
import DBMS.Group03.dao.MovieDao;
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
}
