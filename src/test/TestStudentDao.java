package test;

import dao.StudentDao;
import model.Student;

public class TestStudentDao {
    public static void testStudentDao(){
        Student stu=new StudentDao().user_query_student("2019010312");
        System.out.println(stu.getSname());
    }

    public static void main(String[] args) {
        testStudentDao();
    }
}
