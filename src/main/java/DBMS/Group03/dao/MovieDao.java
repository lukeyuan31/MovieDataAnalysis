package DBMS.Group03.dao;
import DBMS.Group03.domain.*;
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


    @Select("SELECT m.year, avg(um.rating) as avgRating " +
            "from actors a,movies m, movies_actors ma, user_movie um\n" +
            "WHERE a.actor_id=ma.a_id\n" +
            "and m.movie_id=ma.m_id\n" +
            "and ma.m_id=um.m_id\n" +
            "and a.a_name like #{searchString1}\n" +
            "group by m.year\n" +
            "ORDER BY m.year asc ")
    public List<PersonalRating> findPersonalRatings(Movies movies);
/*
    @Select("SELECT m_name from MOVIES")
    public List<String> findMovie(Movies movies);

 */
    @Select("SELECT m.year, avg(um.rating) as avgRating " +
            "from actors a,movies m, movies_actors ma, user_movie um\n" +
            "WHERE a.actor_id=ma.a_id\n" +
            "and m.movie_id=ma.m_id\n" +
            "and ma.m_id=um.m_id\n" +
            "and a.a_name like #{name}\n" +
            "group by m.year\n" +
            "ORDER BY m.year asc ")
    public List<PersonalRating> findPersonalRatingsAjax(String name);



    @Select("SELECT m.year, avg(um.rating) as avgRating,\n" +
            "count(distinct m.movie_id) as numOfFilm, \n" +
            "avg(d.d_quality) as avgDirQuality\n" +
            "from \n" +
            "actors a,movies m, movies_actors ma, user_movie um,directors d,movies_dirs md\n" +
            "WHERE a.actor_id=ma.a_id\n" +
            "and m.movie_id=ma.m_id\n" +
            "and ma.m_id=um.m_id\n" +
            "and m.movie_id=md.m_id\n" +
            "and md.d_id=d.director_id\n" +
            "and a.a_name like #{name}\n" +
            "group by m.year\n" +
            "ORDER BY m.year asc")
    public List<RatingnQuality> findRatingnQuality(String name);

    @Select("SELECT year, AVG(ratio) as ratio\n" +
            "FROM(\n" +
            "SELECT * \n" +
            "FROM movies,\n" +
            "(SELECT male.m_id, Fnum/Mnum as ratio\n" +
            "FROM\n" +
            "(SELECT movies_actors.m_id,COUNT(m.actor_id) as Mnum\n" +
            "FROM \n" +
            "(SELECT * \n" +
            "FROM actors\n" +
            "WHERE a_gender='M') m, \n" +
            "movies_actors\n" +
            "where m.actor_id=movies_actors.a_id\n" +
            "GROUP BY movies_actors.m_id) male,\n" +
            "(SELECT movies_actors.m_id,COUNT(m.actor_id) as Fnum\n" +
            "FROM \n" +
            "(SELECT * \n" +
            "FROM actors\n" +
            "WHERE a_gender='F') m, \n" +
            "movies_actors\n" +
            "where m.actor_id=movies_actors.a_id\n" +
            "GROUP BY movies_actors.m_id) female\n" +
            "WHERE male.m_id=female.m_id) MFratio\n" +
            "WHERE movies.movie_id=MFratio.m_id\n" +
            ")\n" +
            "GROUP BY year \n" +
            "ORDER BY year asc")
    public List<GenderRatio>  findGenderRatio();
}
