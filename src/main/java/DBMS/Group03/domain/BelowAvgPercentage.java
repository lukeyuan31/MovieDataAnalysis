package DBMS.Group03.domain;

public class BelowAvgPercentage {
    private int year;
    private float percentage;

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
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
                "\"year\":" +year +
                ", \"BelowAvgPercentage\":"+percentage+"}";
    }
}
