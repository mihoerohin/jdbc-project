package com.cydeo.jbdcTests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class P03_MetadataTest {


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
        ResultSet rs = statement.executeQuery("select * from employees");

        DatabaseMetaData databaseMetaData = conn.getMetaData();

        System.out.println(databaseMetaData.getUserName());
        System.out.println(databaseMetaData.getDatabaseProductName());
        System.out.println(databaseMetaData.getDatabaseProductVersion());
        System.out.println(databaseMetaData.getDriverName());
        System.out.println(databaseMetaData.getDriverVersion());

        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");

        ResultSetMetaData rsmd = rs.getMetaData();

        int columnCount = rsmd.getColumnCount();   // total column
        System.out.println(columnCount);           // total column

        System.out.println(rsmd.getColumnName(5)); // column name

        System.out.println(rsmd.getColumnDisplaySize(2));

        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");


        List<Integer> id = new ArrayList<>();
        while (rs.next()) {
            id.add(rs.getInt(1));
        }

        Map<String, String> map = new HashMap<>();

        Map<List<Integer>, Map<String,String>> EMPLOYEE_ID = new HashMap<>();

      while (rs.next()){

          for (int i = 1; i <=rsmd.getColumnCount(); i++) {
              map.put(rsmd.getColumnName(i), rs.getString(i));
          }
      }
        System.out.println(map.get("FIRST_NAME"));
        System.out.println(map.values());

        while(rs.next()){

            //iterate each column dynamicly
            for (int i = 1; i <=rsmd.getColumnCount(); i++) {
                System.out.print(rsmd.getColumnName(i)+"-"+rs.getString(i)+" ");

            }
            System.out.println();
        }







        rs.close();
        statement.close();
        conn.close();

    }

}
