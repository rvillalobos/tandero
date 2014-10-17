package com.iteso.sweng.dao;

/**
 * Created by Alejandro on 15/10/2014.
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class LoginDao {
    public static boolean validate(String name, String pass) {
        boolean status = false;
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        String url = "jdbc:mysql://localhost:3306/";  /* initialize data base with dbname, dbuser, dbpassword*/
        String dbName = "tandero";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "root";


        try {
            Class.forName(driver).newInstance();
            conn = DriverManager
                    .getConnection(url + dbName, userName, password);
            pst = conn
                    .prepareStatement("select * from user where email=? and password=?"); /* try to connect to the database and get the username*/
            pst.setString(1, name);
            pst.setString(2, pass);
            rs = pst.executeQuery();
            status = rs.next();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pst != null) {
                try {
                    pst.close();                    /*Get all the exceptions sql can give*/
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return status;    /* return contact if exists or null*/
    }
}
