package DBMS.Group03.test;
import DBMS.Group03.dao.UsersDao;
import DBMS.Group03.domain.Users;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.jupiter.api.Test;
import java.util.List;

import java.io.InputStream;


public class mybatistest {
    @Test
    public void run1() throws Exception {
        // 加载配置文件
        InputStream in = Resources.getResourceAsStream("mybatis.xml");
        // 创建SqlSessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        // 创建SqlSession对象
        SqlSession session = factory.openSession();
        // 获取到代理对象
        UsersDao dao = session.getMapper(UsersDao.class);
        // 查询所有数据
        // 这里为了测试 将user改为String 本用于测试查找用户功能
        List<Users> list = dao.findUsers();
      //  List<String> list =dao.findContinents();
        for(Users users : list){
            System.out.println(users);
        }
        // 关闭资源
        session.close();
        in.close();
    }

    @Test
    public void run2() throws Exception {
        Users users = new Users();
        users.setUsername("threestar");
        users.setPASSWORD("789");

        // 加载配置文件
        InputStream in = Resources.getResourceAsStream("mybatis.xml");
        // 创建SqlSessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        // 创建SqlSession对象
        SqlSession session = factory.openSession();
        // 获取到代理对象
        UsersDao dao = session.getMapper(UsersDao.class);

        // 保存
        dao.insertUsers(users);

        // 提交事务
        session.commit();

        // 关闭资源
        session.close();
        in.close();
    }

}
