package DBMS.Group03.domain;

public class FemalePercentage {
    private String genre;
    private float percentage;

    public String getGenre() {return genre;}

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public float getPercentage() {
        return percentage;
    }

    public void setPercentage(float percentage) {
        this.percentage = percentage;
    }

    @Override
    public String toString(){
        return "{" +
                "\"genre\":\"" +genre +
                "\", \"FemalePercentage\":"+percentage+"}";
    }
}
