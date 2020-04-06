package DBMS.Group03.domain;
import java.io.Serializable;

public class PersonalRating implements Serializable{
    private int year;
    private float avgRating;

    public void setAvgRating(float avgRating) {
        this.avgRating = avgRating;
    }

    public float getAvgRating() {
        return avgRating;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    @Override
    public String toString(){
        return "personalRating{" +
                "year=" +year +
                ", avgRating="+avgRating+"}";
    }
    /*
    return "Users{" +
            "id=" +id+
            ", username='" + username + '\''+
            ", PASSWORD='" + PASSWORD + '\''+
            '}';
     */
}
