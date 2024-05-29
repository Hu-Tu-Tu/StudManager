package test;

import dao.DepartmentDao;
import model.Department;

public class TestDepartmentDao {
    public static void testDepartmentDao(){
        Department de=new DepartmentDao().user_query_department("2019010312");
        System.out.println(de.getDname());
    }

    public static void main(String[] args) {
        testDepartmentDao();
    }
}
