package DBMS.Group03.dao;
import DBMS.Group03.domain.Movies;
import DBMS.Group03.domain.Ratings;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface MovieDao {
    //根据输入的影星获得电影名字

    @Select("SELECT m.m_name from MOVIES m , MOVIES_ACTORS ma, ACTORS a, DIRECTORS d, MOVIES_DIRS md " +
            "WHERE ma.m_id=m.movie_id " +
            "and md.m_id=ma.m_id " +
            "and ma.a_id=a.actor_id\n" +
            "and d.director_id=md.d_id " +
            "and a.a_name like #{searchString1} " +
            "and d.d_name like #{searchString2} "
            )
    public List<String> findMovie(Movies movies);

    @Select("SELECT * FROM\n" +
            "(SELECT m.m_name as MovieName, AVG(um.rating) as avgRating \n" +
            "from movies m natural join user_movie um, \n" +
            "movies_actors ma natural join actors a,\n" +
            "user_info ui \n" +
            "where m.movie_id=um.m_id\n" +
            "and ma.m_id=um.m_id\n" +
            "and ma.a_id=a.actor_id\n" +
            "and a.a_name like #{searchString1}\n" +
            "and um.u_id=ui.u_id\n" +
            "and ui.u_age<#{yR2}\n" +
            "and ui.u_age>#{yR1}" +
            "GROUP BY m.m_name\n" +
            "ORDER BY avgRating desc)\n" +
            "WHERE rownum<#{rownum} ")
    public List<Ratings> findRating(Movies movies);
/*
    @Select("SELECT m_name from MOVIES")
    public List<String> findMovie(Movies movies);

 */
}
