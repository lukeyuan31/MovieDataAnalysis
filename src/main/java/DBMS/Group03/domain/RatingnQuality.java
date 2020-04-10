package DBMS.Group03.domain;

public class RatingnQuality {
    private int year;
    private float avgRating;
    private int numOfFilm;
    private float avgDirQuality;

    public void setYear(int year) {
        this.year = year;
    }

    public int getYear() {
        return year;
    }

    public float getAvgRating() {
        return avgRating;
    }

    public void setAvgRating(float avgRating) {
        this.avgRating = avgRating;
    }

    public float getAvgDirQuality() {
        return avgDirQuality;
    }

    public int getNumOfFilm() {
        return numOfFilm;
    }

    public void setAvgDirQuality(float avgDirQuality) {
        this.avgDirQuality = avgDirQuality;
    }

    public void setNumOfFilm(int numOfFilm) {
        this.numOfFilm = numOfFilm;
    }

    @Override
    public String toString(){
        return "{" +
                "\"year\":" +year +
                ", \"avgRating\":"+avgRating+
                ", \"numOfFilm\":"+numOfFilm+
                ", \"avgDirQuality\":"+avgDirQuality+"}";
    }
}
