package DBMS.Group03.controller;
import DBMS.Group03.domain.Users;
import DBMS.Group03.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/users")
public class UsersController {
    @Autowired
    private UsersService usersService;

    /*
    *@param model
     */

   @RequestMapping("/findUsers")
    public String findUsers(Model model){
       System.out.println("表现层 查询用户");
       List<Users> list =usersService.findUsers();
       model.addAttribute("List", list);
       //usersService.findUsers();
       return "Users";
   }

   @RequestMapping("/findContinents")
   public String findContinents(Model model){
       System.out.println("查询大陆");
       List<String> list=usersService.findContinents();
       System.out.println(list.get(0));
       model.addAttribute("Continent",list);
       return "Users";
   }


    @RequestMapping("/insert")
    public String insert(Users users) {
        System.out.println("注册");
        // 调用注入的 usersService 调用 insertUsers 方法
        usersService.insertUsers(users);
        return "success";
    }

    @RequestMapping("/login")
    public String login(Users users) {
        System.out.println("登录");
        // 调用注入的 usersService 调用 login 方法
        if(usersService.login(users)){
            return "successlogin";
        }else{
            return "falselogin";
        }
    }


}
