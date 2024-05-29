package test;

import dao.ClassDao;
import model.Class;

public class TestClassDao {
    public static void testClassDao(){
        Class c=new ClassDao().user_query_class("2019010312");
        System.out.println(c.getClname());
    }

    public static void main(String[] args) {
        testClassDao();
    }
}
