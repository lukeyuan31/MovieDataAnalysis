package DBMS.Group03.domain;

public class GenderRatio {
    private int year;
    private float ratio;

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public float getRatio() {
        return ratio;
    }

    public void setRatio(float ratio) {
        this.ratio = ratio;
    }

    @Override
    public String toString(){
        return "{" +
                "\"year\":" +year +
                ", \"GenderRatio\":"+ratio+"}";
    }
}
