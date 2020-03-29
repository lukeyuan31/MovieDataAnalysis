package DBMS.Group03.dao;
import DBMS.Group03.domain.Movies;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface MovieDao {
    //根据输入的影星获得电影名字

    @Select("SELECT movies.m_name from MOVIES, MOVIES_ACTORS, ACTORS " +
            "WHERE movies_actors.m_id=movies.movie_id " +
            "and movies_actors.a_id=actors.actor_id " +
            "and actors.a_name=#{actor}")
    public List<String> findMovie(Movies movies);

/*
    @Select("SELECT m_name from MOVIES")
    public List<String> findMovie(Movies movies);

 */
}
