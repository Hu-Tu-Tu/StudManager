package test;

import dao.UserDao;
import model.User;

import java.util.ArrayList;


public class TestUserDao {
    public static void testUserDao(){
        UserDao userDao=new UserDao();
        //判断用户是否存在
        System.out.println(userDao.userIsExist("admin"));
        //判断用户登录情况
        System.out.println(userDao.login("admin","666").getLevel());
        //用户注册
        System.out.println(userDao.register("vvv","111","管理员").getUsername());
        //获取用户的权限级别
        System.out.println(userDao.level("admin"));
        //插入用户信息
        System.out.println(userDao.insert_user("11","11","管理员"));
        //删除用户信息
        System.out.println(userDao.delete_user("11"));
        //修改用户信息
        System.out.println(userDao.alter_user("vvv","cch","123","用户"));
        //获取所有的用户信息
        ArrayList<User> users=userDao.query_all_user();
        for (int i = 0; i < users.size(); i++) {
            System.out.println(users.get(i).getUsername());
        }

    }

    public static void main(String[] args) {
        testUserDao();
    }
}
