package DBMS.Group03.dao;
import DBMS.Group03.domain.*;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface MovieDao {
    //根据输入的影星获得电影名字

    @Select("SELECT m.m_name as Title from MOVIES m , MOVIES_ACTORS ma, ACTORS a, DIRECTORS d, MOVIES_DIRS md " +
            "WHERE ma.m_id=m.movie_id " +
            "and md.m_id=ma.m_id " +
            "and ma.a_id=a.actor_id\n" +
            "and d.director_id=md.d_id " +
            "and a.a_name like #{searchString1} " +
            "and d.d_name like #{searchString2} "
            )
    public List<Movies> findMovie(Movies movies);

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


    @Select("select b.genre_count as num, b.genre, b.year \n" +
            "from(\n" +
            "\n" +
            "Select MAX(genre_count) AS max_genre_count, year \n" +
            "from  \n" +
            "(\n" +
            "Select count(genre) as genre_count,genre, year \n" +
            "from movies, movies_dirs \n" +
            "where m_id = movie_id \n" +
            "group by year, genre\n" +
            ")\n" +
            "group by year\n" +
            "\n" +
            ") a,\n" +
            "(\n" +
            "Select count(genre) as genre_count,genre, year \n" +
            "from movies, movies_dirs \n" +
            "where m_id = movie_id \n" +
            "group by year, genre\n" +
            ") b\n" +
            "where\n" +
            "a.max_genre_count = b.genre_count\n" +
            "and a.year = b.year\n" +
            "order by year asc")
    public List<GenreNum> findGenreNum();


    @Select("SELECT year, AVG(ratio) as ratio\n" +
            "FROM Movies,\n" +
            "(SELECT m1.m_id, m2.count2/m1.count1 as ratio\n" +
            "FROM \n" +
            "(SELECT m_id, COUNT(a_id) as count1\n" +
            "FROM movies_actors GROUP BY m_id) m1,\n" +
            "\n" +
            "(SELECT L1.m_id, COUNT(*) as count2\n" +
            "FROM Movies_actors l1,\n" +
            "(SELECT * FROM actors\n" +
            "WHERE a_quality>3) l2\n" +
            "WHERE l1.a_id=l2.actor_id\n" +
            "GROUP BY l1.m_id) m2\n" +
            "\n" +
            "WHERE m1.m_id=m2.m_id) t1\n" +
            "WHERE t1.m_id=movies.movie_id\n" +
            "and movies.year<2020\n" +
            "and movies.year>1900\n" +
            "GROUP BY year\n" +
            "ORDER BY year asc\n")
    public List<GoodActorRatio> findGoodActorRatio();

    @Select("SELECT year, AVG(difference) as difference\n" +
            "FROM movies,\n" +
            "(SELECT m_rating.m_id, avg_score-avg_quality as Difference\n" +
            "FROM\n" +
            "(SELECT m_id, AVG(rating) avg_score\n" +
            "FROM user_movie\n" +
            "GROUP BY m_id) m_rating,\n" +
            "(SELECT m_id, AVG(a_quality) avg_quality\n" +
            "FROM movies_actors, actors\n" +
            "WHERE a_id=actor_id\n" +
            "GROUP BY m_id) m_quality\n" +
            "WHERE m_rating.m_id=m_quality.m_id)\n" +
            "WHERE m_id=movie_id\n" +
            "GROUP BY year\n" +
            "ORDER BY year")
    public List<QualityDifference> findQualityDifference();

    @Select("SELECT l1.year as year, (l1.count1/l2.count2)*100 as percentage\n" +
            "FROM\n" +
            "(SELECT  year, COUNT(*) as count1\n" +
            "FROM movies,\n" +
            "(SELECT m_id, AVG(rating) as avg_score\n" +
            "FROM user_movie\n" +
            "GROUP BY m_id) a_movie\n" +
            "WHERE movies.movie_id=a_movie.m_id\n" +
            "AND (avg_score<(\n" +
            "SELECT AVG(avg_rating)\n" +
            "FROM\n" +
            "(SELECT AVG(RATING) as avg_rating, m_id\n" +
            "FROM user_movie\n" +
            "GROUP BY M_ID)))\n" +
            "GROUP BY year\n" +
            "ORDER BY year) l1,\n" +
            "(SELECT year, COUNT (*) as count2\n" +
            "FROM Movies\n" +
            "GROUP BY year\n" +
            "HAVING COUNT (*) >3\n" +
            "ORDER BY year) l2\n" +
            "WHERE l1.year=l2.year\n" +
            "order by year")
    public List<BelowAvgPercentage> findBelowAvgPercentage();

    //以女性角色占主导的电影在各类型影片中的比例
//the percentage of women-leading movie in all kinds of movie genres
    //柱状图
    @Select("select md.genre as genre, (cid/genre_count)*100 as percentage\n" +
            "from\n" +
            "(select genre, count(id) as cid\n" +
            "from\n" +
            "(select distinct(f.m_id) as id from\n" +
            "(select m_id, count(ma.a_id) as fnum\n" +
            "from movies_actors ma, actors a\n" +
            "where a.actor_id = ma.a_id\n" +
            "and a.a_gender = 'F'\n" +
            "group by m_id) F,\n" +
            "(select m_id, count(ma.a_id) mnum\n" +
            "from movies_actors ma, actors a\n" +
            "where a.actor_id = ma.a_id\n" +
            "and a.a_gender = 'M'\n" +
            "group by m_id) M\n" +
            "where m.m_id = f.m_id\n" +
            "and f.fnum>=m.mnum) mov,\n" +
            "movies_dirs\n" +
            "where mov.id = movies_dirs.m_id\n" +
            "group by genre) female,\n" +
            "(select genre,count(*) as genre_count\n" +
            "from movies_dirs\n" +
            "group by genre) md\n" +
            "where md.genre = female.genre")
    public List<FemalePercentage> findFemalePercentage();


}
