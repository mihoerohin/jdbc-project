package com.cydeo.jbdcTests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.HashMap;
import java.util.Map;

public class P02_FlaxibleNavigation {


    String dbUrl = "jdbc:oracle:thin:@3.87.36.198:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";


    @Test
    public void task1() throws SQLException {

        // DriverManager class getConneciton is used for to make connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // Statement helps us to execute Query
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        // ResultSet stores data that we get from after query execution
        // rs is just a variable/object name
        ResultSet rs = statement.executeQuery("select first_name, last_name from employees");

        rs.next();
        System.out.println(rs.getString(1) + " " + rs.getString("last_name"));

        rs.next();
        System.out.println(rs.getString(1) + " " + rs.getString("last_name"));

        rs.last();
        System.out.println(rs.getString(1) + " " + rs.getString(2));

        System.out.println("~~~~~~~~~~~~~~~GET~ROW~~~~~~~~~~~~~~~~~~");
        int row = rs.getRow();
        System.out.println(row);

        System.out.println("~~~~~~~~~~~~~~~ABSOLUTE~~~~~~~~~~~~~~");

        rs.absolute(10);
        System.out.println(rs.getString(1) + " " + rs.getString(2));
        System.out.println(rs.getRow());

        System.out.println("~~~~~~~~~~~~~~~PREVIOUS~~~~~~~~~~~~~~");

        rs.previous();
        System.out.println(rs.getString(1) + " " + rs.getString(2));
        System.out.println(rs.getRow());

        System.out.println("~~~~~~~~~~~~~~~PRINT ALL TABLE DYNAMIC~~~~~~~~~~~~~~");
        rs.beforeFirst();


//        while (rs.next()) {
//            System.out.println(rs.getString(1) + " " + rs.getString(2));
//        }
        ResultSetMetaData rsmd = rs.getMetaData();



        Map<Integer, String> map = new HashMap<>();
        while (rs.next()){
            map.put(rs.getRow(), rs.getString(1) + " " + rs.getString(2));
        }
        System.out.println(map);


        rs.close();
        statement.close();
        conn.close();
    }
}
