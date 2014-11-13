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
    private String dbURL;
    private String username;
    private String password;
    private Connection connection;
    public DatabaseConnection(String dbURL, String username, String userPassword) 
    {
        this.dbURL = dbURL;
        this.username = username;
        this.password = password;
    }
    
    /**
     * Gets a connection to the MySQL database
     * @return A Connection object that represents the database connection
     * @throws Exception 
     */
    public Connection getConnection() throws Exception
    {
        return DriverManager.getConnection(dbURL, username, password);
    }
}
