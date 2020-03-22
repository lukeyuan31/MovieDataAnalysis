package DBMS.Group03.service;
import DBMS.Group03.domain.Users;
import java.util.List;

public interface UsersService {
    //查询所有用户
    public List<Users> findUsers();
    //用户注册
    public void insertUsers(Users users);
    //用户登陆
    public boolean login(Users users);

    public List<String> findContinents();

}
