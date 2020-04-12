package DBMS.Group03.domain;

public class GenreNum {
    private int year;
    private String genre;
    private int num;

    public void setYear(int year) {
        this.year = year;
    }

    public int getYear() {
        return year;
    }

    public int getNum() {
        return num;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public void setNum(int num) {
        this.num = num;
    }

    @Override
    public String toString(){
        return "{" +
                "\"year\":" +year +
                ", \"genre\":\""+genre+
                "\", \"number\":"+num+
                "}";
    }
}
