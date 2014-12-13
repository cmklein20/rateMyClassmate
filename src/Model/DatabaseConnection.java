/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author lt
 */
public class DatabaseConnection 
{  
    private final String DB_URL = "jdbc:mysql://localhost:3306/RateMyClassmate";
    private final String USERNAME = "root";
    private final String PASSWORD = "";
    
    public DatabaseConnection() 
    {
        
    }
    
    /**
     * Gets a connection to the MySQL database
     * @return A Connection object that represents the database connection
     * @throws Exception 
     */
    public Connection getConnection() throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
    }
}
