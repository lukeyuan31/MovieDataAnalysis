package DBMS.Group03.controller;
import DBMS.Group03.domain.PersonalRating;
import DBMS.Group03.domain.Ratings;
import DBMS.Group03.service.MoviesService;
import DBMS.Group03.domain.Movies;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/movies")
public class MovieController {
    @Autowired
    private MoviesService moviesService;

    @RequestMapping("/findMovies")
    public String findMovies(Movies movies,Model model){
        System.out.println("查找电影");
        movies.split_actor_name();
        movies.split_director_name();
        //System.out.println(movies.getActor_first_name());
        //System.out.println(movies.getActor_last_name());
        System.out.println(movies.getSearchString());
        List<String> list=moviesService.findMovies(movies);
        for (int i=0;i<list.size();i++){
            String temp=list.get(i);
            list.set(i,temp+"\n");
        }
        //System.out.println(list.get(1));
        model.addAttribute("MovieList", list);
        return "movieList";
    }

    @RequestMapping("/findRatings")
    public String findRatings(Movies movies, Model model){
        System.out.println("查找评分");
        movies.split_actor_name();
        movies.toInteger();
        System.out.println("get Year Range "+movies.getyR2());
        System.out.println("get actor name "+movies.getActor());
        List<Ratings> list=moviesService.findRatings(movies);
        System.out.println(list.toString());
        model.addAttribute("MovieRating", list);
        return "ratingList";
    }

    @RequestMapping("/findPersonalRatings")
    public String findPersonalRatings(Movies movies, Model model){
        //movies.split_actor_name();
        //List<PersonalRating> list=moviesService.findPersonalRatings(movies);
        //System.out.println(list.toString());
        //model.addAttribute("PersonalRating",list);
        return "personalRatings";
    }

    @RequestMapping("/findPersonalRatingsAjax")
    public Map<String, List> findPersonalRatingsAjax(String name){
        String[] full =name.split(" ");
        String input="%"+full[0]+"%"+full[1]+"%";
        List<PersonalRating> list=moviesService.findPersonalRatingsAjax(input);
        //Gson gson=new Gson();
        //String str=gson.toJson(list);
        //model.addAttribute("PersonalRatingAjax",list);
        //return "personalRatingsAjax";
        ArrayList<Integer> years=new ArrayList<>();
        ArrayList<Float> ratings=new ArrayList<>();

        for(PersonalRating p: list){
            years.add(p.getYear());
            ratings.add(p.getAvgRating());
        }

        Map<String,List> map=new HashMap<String, List>();
        map.put("year",years);
        map.put("ratings",ratings);
        return map;
    }


}
