package test;

import utils.DBUtils;
public class TestDB {
    /**
     * DB连接测试用例
     */
    public static void testDB(){
        System.out.println(DBUtils.getConnection());
    }

    public static void main(String[] args) {
        testDB();
    }
}
