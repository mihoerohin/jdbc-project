package com.cydeo.jbdcTests.day02;

import com.cydeo.jbdcTests.utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class P03_LibraryDBTest {


    // username = librarian1@library
    // password = qU9mrvur
    // Create connection to MySQL Database
    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username = "library2_client";
    String password = "6s2LQQTjBcGFfDhY" ;

    @Test
    public void test(){

        DB_Util.createConnection(url, username, password);

        DB_Util.runQuery("select count(*) from users");

        String expectedCount = DB_Util.getCellValue(1,1);

        String actual = "267";

        Assertions.assertEquals(expectedCount, actual);

        DB_Util.destroy();
    }

    @Test
    public void testBookCount(){

        DB_Util.createConnection(url, username, password);

        DB_Util.runQuery("select count(*) from books");

        String expectedCount = DB_Util.getCellValue(1,1);

        String actual = "1403";

        Assertions.assertEquals(expectedCount, actual);

        DB_Util.destroy();


    }
}
