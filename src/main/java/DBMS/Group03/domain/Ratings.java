package DBMS.Group03.domain;
import java.io.Serializable;

public class Ratings implements Serializable{
    private String MovieName;
    private float avgRating;

    public float getAvgRating() {
        return avgRating;
    }

    public String getMovieName() {
        return MovieName;
    }

    public void setAvgRating(float avgRating) {
        this.avgRating = avgRating;
    }

    public void setMovieName(String movieName) {
        MovieName = movieName;
    }

    @Override
    public String toString(){
        return "Movie{" +
                "Title= " +MovieName+
                ", avgRating='" + avgRating + '\''+
                '}'+"<br>";
    }
}
