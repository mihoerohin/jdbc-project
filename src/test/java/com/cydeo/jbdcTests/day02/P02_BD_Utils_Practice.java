package com.cydeo.jbdcTests.day02;

import com.cydeo.jbdcTests.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.List;
import java.util.Map;
 public class P02_BD_Utils_Practice {

//    DB_Util dbUtil = new DB_Util();

    @Test
    public void task1() throws SQLException {

        DB_Util.createConnection();

        DB_Util.runQuery("select first_name, last_name, salary from employees");

        List<Map<String, String>> list = DB_Util.getAllRowAsListOfMap();

         for (Map<String,String> e : list){
             System.out.println(e);
         }
        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        System.out.println(DB_Util.getFirstRowFirstColumn());

        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");

        DB_Util.destroy();
    }
    @Test
    public void task2(){

        DB_Util.createConnection();

        DB_Util.runQuery("select count (*) from employees");

        System.out.println(DB_Util.getFirstRowFirstColumn());  // 107

        System.out.println(DB_Util.getCellValue(1,1));  // 107

        DB_Util.destroy();
    }
}
