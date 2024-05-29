package test;

import dao.SCDao;
import model.SC;

import java.util.ArrayList;

public class TestSCDao {
    public static void testSCDao(){
        ArrayList<SC> s=new SCDao().user_query_sc("2019010312");
        for (SC item : s) {
            System.out.println(item.getGrade());
        }
    }

    public static void main(String[] args) {
        testSCDao();
    }
}
