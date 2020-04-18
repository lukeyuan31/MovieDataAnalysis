package DBMS.Group03.domain;

public class QualityDifference {
    private int year;
    private float difference;

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public float getDifference() {
        return difference;
    }

    public void setDifference(float difference) {
        this.difference = difference;
    }

    @Override
    public String toString(){
        return "{" +
                "\"year\":" +year +
                ", \"QualityDifference\":"+difference+"}";
    }
}
