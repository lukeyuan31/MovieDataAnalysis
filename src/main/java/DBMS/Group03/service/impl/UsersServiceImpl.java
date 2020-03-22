package DBMS.Group03.service.impl;
import DBMS.Group03.dao.UsersDao;
import DBMS.Group03.domain.Users;
import DBMS.Group03.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("usersService")
public class UsersServiceImpl implements UsersService{
    @Autowired
    private UsersDao usersDao;

    @Override
    public List<String> findContinents(){
        System.out.println("查找大陆");
        return usersDao.findContinents();
    }



    @Override
    public List<Users> findUsers(){
        System.out.println("业务层：查询用户");
        return usersDao.findUsers();
    }

    @Override
    public void insertUsers(Users users){
        System.out.println("业务层：用户注册");
        usersDao.insertUsers(users);
    }

    @Override
    public boolean login(Users users){
        System.out.println("业务层：用户登录");
        return usersDao.login(users) != null;
    }
}
