package com.cydeo.jbdcTests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P01_JDBCIntro {

    String dbUrl = "jdbc:oracle:thin:@3.87.36.198:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";


    @Test
    public void task1() throws SQLException {

        // DriverManager class getConneciton is used for to make connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // Statement helps us to execute Query
        Statement statement = conn.createStatement();

        // ResultSet stores data that we get from after query execution
        // rs is just a variable/object name
        ResultSet rs = statement.executeQuery("select * from departments where manager_id is not null");

        while (rs.next()){
            System.out.println(rs.getInt(1)
                       +"-"+rs.getString(2)
                          +"-"+rs.getInt(3)
                          +"-"+rs.getInt(4));
        }

        rs=statement.executeQuery("select * from REGIONS");

        while (rs.next()){
            System.out.println(rs.getInt(1) + "-" + rs.getString(2));
            System.out.println(rs.getInt("REGION_ID") + rs.getString("REGION_NAME"));
        }





        //close conn
        rs.close();
        statement.close();
        conn.close();
    }
}
