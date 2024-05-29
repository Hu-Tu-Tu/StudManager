package test;

import dao.CourseDao;
import model.Course;
import model.Course_avg;

import java.util.ArrayList;

public class TestCourseDao {
    public static void testCourseDao(){
        ArrayList<Course> c=new CourseDao().user_query_course("2019010312");
        for (Course item:c) {
            System.out.println(item.getCname());
        }
        ArrayList<Course_avg> cs=new CourseDao().user_course_avg("2019010312");
        for (Course_avg item:cs) {
            System.out.println(item.getAvg());
        }
    }


    public static void main(String[] args) {
        testCourseDao();
    }
}
