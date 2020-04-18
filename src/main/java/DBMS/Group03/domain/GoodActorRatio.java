package DBMS.Group03.domain;

public class GoodActorRatio {
    private int year;
    private float ratio;

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public void setRatio(float ratio) {
        this.ratio = ratio;
    }

    public float getRatio() {
        return ratio;
    }

    @Override
    public String toString(){
        return "{" +
                "\"year\":" +year +
                ", \"Ratio\":"+ratio+"}";
    }
}
