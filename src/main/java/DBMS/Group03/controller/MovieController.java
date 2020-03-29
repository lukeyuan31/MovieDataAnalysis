package DBMS.Group03.controller;
import DBMS.Group03.service.MoviesService;
import DBMS.Group03.domain.Movies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

@Controller
@RequestMapping("/movies")
public class MovieController {
    @Autowired
    private MoviesService moviesService;

    @RequestMapping("/findMovies")
    public String findMovies(Movies movies,Model model){
        System.out.println("查找电影");
        List<String> list=moviesService.findMovies(movies);
        for (int i=0;i<list.size();i++){
            String temp=list.get(i);
            list.set(i,temp+"\n");
        }
        model.addAttribute("MovieList", list);
        return "movieList";
    }


}
