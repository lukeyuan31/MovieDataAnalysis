package DBMS.Group03.dao;
import DBMS.Group03.domain.Users;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface UsersDao {
    //查询所有用户
    //测试数据库联通
    @Select("select * from USERS")
    public List<Users> findUsers();
    //用户注册
    @Insert("INSERT INTO USERS (username,PASSWORD) VALUES(#{username},#{PASSWORD})")
    public void insertUsers(Users users);
    //用户登陆
    @Select("select * from users where username=#{username} and PASSWORD=#{PASSWORD}")
    public Users login(Users users);

    @Select("Select name from CONTINENT")
    public List<String> findContinents();

}
