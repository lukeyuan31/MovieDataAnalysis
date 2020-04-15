package DBMS.Group03.domain;
import java.io.Serializable;

public class Movies implements Serializable{
    private String actor;
    private String director;
    private String Title;

    private String actor_first_name;
    private String actor_last_name;

    //searchString1是分解组合后的演员名
    //searchString2是分解组合后的导演名
    private String searchString1;
    private String searchString2;

    //yearRange用于在数据库中寻找对应年龄范围内的数据
    private String yearRange1;
    private String yearRange2;

    private int yR1;
    private int yR2;

    //rowNum用于决定返回的结果数量
    private String rownum;

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public void toInteger(){
        System.out.println(yearRange2);
        yR2=Integer.parseInt(yearRange2);
        yR1=yR2-20;
    }

    public void split_actor_name(){
        String[] full=actor.split(" ");
        this.actor_first_name=full[0];
        this.actor_last_name=full[1];
        //String[] fullDirector=director.split(" ");
        this.searchString1="%"+actor_first_name+"%"+actor_last_name+"%";
        //this.searchString2="%"+fullDirector[0]+"%"+fullDirector[1]+"%";

    }

    public void split_director_name(){
        String[] fullDirector=director.split(" ");
        this.searchString2="%"+fullDirector[0]+"%"+fullDirector[1]+"%";
    }

    //将输入的名字拆分后结合成sql嵌入实现模糊搜索
    public String getSearchString() {
        return searchString1+searchString2;
    }

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

    public String getActor_first_name() {
        return actor_first_name;
    }

    public String getActor_last_name() {
        return actor_last_name;
    }

    public String getYearRange1() {
        return yearRange1;
    }

    public String getYearRange2() {
        return yearRange2;
    }

    public int getyR2() {
        return yR2;
    }

    public void setYearRange2(String yearRange2) {
        this.yearRange2 = yearRange2;
    }

    public void setRownum(String rownum) {
        this.rownum = rownum;
    }

    @Override
    public String toString(){
        return "{"+
                "\"Title\": \""+Title+"\"}";
    }
}
