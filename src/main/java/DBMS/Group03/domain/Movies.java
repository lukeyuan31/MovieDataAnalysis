package DBMS.Group03.domain;
import java.io.Serializable;

public class Movies implements Serializable{
    private String actor;
    private String director;

    public String getActor() {
        return actor;
    }

    public String getDirector() {
        return director;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public void setDirector(String director) {
        this.director = director;
    }

}
