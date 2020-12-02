/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import java.io.*;
import java.sql.*;

/**
 *
 * @author dinhs
 */
public class DAO {
    public static Connection con;

    public DAO() {
        if(con== null){
            String dbUrl = "jdbc:mysql://localhost:3306/qlygara?autoReconnect=true&useSSL=false";
            String dbClass = "com.mysql.cj.jdbc.Driver";
            try {
		Class.forName(dbClass);
		con = DriverManager.getConnection (dbUrl, "root", "1945");
            }catch(Exception e) {
		e.printStackTrace();
            }
        }        
    }
//    public static void main(String[] args) {
//        System.out.println("conecting");
//    }
}
