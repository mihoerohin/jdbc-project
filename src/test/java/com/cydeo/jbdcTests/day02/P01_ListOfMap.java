package com.cydeo.jbdcTests.day02;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class P01_ListOfMap {

    String dbUrl = "jdbc:oracle:thin:@3.87.36.198:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";


    @Test
    public void task1() throws SQLException {

        Map<String, Object> rowMap1 = new HashMap<>();
        rowMap1.put("first_name", "Janna");
        rowMap1.put("last_name", "Lee");
        rowMap1.put("salary", 150000);

        System.out.println(rowMap1);

        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");

        Map<String, Object> rowMap2 = new HashMap<>();
        rowMap2.put("first_name", "Mike");
        rowMap2.put("last_name", "God");
        rowMap2.put("salary", 80000);

        System.out.println(rowMap2);

        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");

        List<Map<String, Object>> dataList = new ArrayList<>();

        dataList.add(rowMap1);
        dataList.add(rowMap2);

        System.out.println(dataList.get(0).get("last_name"));  // Janna
        System.out.println(dataList.get(1).get("last_name"));   // God
        System.out.println(dataList.get(1).get("last_name") + " " + dataList.get(1).get("salary"));
    }

    @Test
    public void task2() throws SQLException {

        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        ResultSet rs = statement.executeQuery("select first_name, last_name, salary from employees where rownum<6");

        ResultSetMetaData rsmd = rs.getMetaData();

        rs.next();

        Map<String, Object> rowMap1 = new HashMap<>();
        rowMap1.put(rsmd.getColumnName(1), rs.getString(1));
        rowMap1.put(rsmd.getColumnName(2), rs.getString(2));
        rowMap1.put(rsmd.getColumnName(3), rs.getInt(3));

        System.out.println(rowMap1);

        rs.next();

        Map<String, Object> rowMap2 = new HashMap<>();
        rowMap2.put(rsmd.getColumnName(1), rs.getString(1));
        rowMap2.put(rsmd.getColumnName(2), rs.getString(2));
        rowMap2.put(rsmd.getColumnName(3), rs.getInt(3));

        System.out.println(rowMap2);


        List<Map<String, Object>> dataList = new ArrayList<>();
        dataList.add(rowMap1);
        dataList.add(rowMap2);

        System.out.println(dataList.get(1).get(rsmd.getColumnName(2)));
        System.out.println(dataList.get(0).get(rsmd.getColumnName(2)));

        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        for (Map<String, Object> eachRow : dataList) {
            System.out.println(eachRow);
        }


        rs.close();
        statement.close();
        conn.close();
    }

    @Test
    public void task3() throws SQLException {

        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        ResultSet rs = statement.executeQuery("select first_name, last_name, salary from employees where rownum<6");

        ResultSetMetaData rsmd = rs.getMetaData();


        List<Map<String, Object>> dataList = new ArrayList<>();


        while (rs.next()) {

            Map<String, Object> rowMap = new HashMap<>();

            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                rowMap.put(rsmd.getColumnName(i), rs.getString(i));
            }

            dataList.add(rowMap);

        }

        for (Map<String, Object> each : dataList) {
            System.out.println(each);
        }


        rs.close();
        statement.close();
        conn.close();
    }
}
