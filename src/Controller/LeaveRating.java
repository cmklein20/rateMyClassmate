/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.DatabaseConnection;
import Model.School;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lt
 */
public class LeaveRating extends HttpServlet
{
    
    private DatabaseConnection dbConnection;
    private Connection connection;
    
    public LeaveRating()
    {
        dbConnection = new DatabaseConnection();
    }
    
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        int ratingFor = Integer.parseInt(request.getParameter("ratingFor"));
        Date date = new Date();
        int ratingBy = (int)date.getTime();
        int knowledge = Integer.parseInt(request.getParameter("knowledge"));
        int availability = Integer.parseInt(request.getParameter("availability"));
        int motivation = Integer.parseInt(request.getParameter("motivation"));
        int dependability = Integer.parseInt(request.getParameter("dependability"));
        int friendliness = Integer.parseInt(request.getParameter("friendliness"));
        
        try
        {
            connection = dbConnection.getConnection();
            PreparedStatement preparedQuery = null;
            
            String query = "INSERT INTO Ratings (ratingFor, ratingBy, knowledge, availability, motivation, dependability, friendliness) VALUES(?, ?, ?, ?, ?, ?, ?)";
            preparedQuery = connection.prepareStatement(query);
            
            preparedQuery.setInt(1, ratingFor);
            preparedQuery.setInt(2, ratingBy);
            preparedQuery.setInt(3, knowledge); 
            preparedQuery.setInt(4, availability);
            preparedQuery.setInt(5, motivation);
            preparedQuery.setInt(6, dependability);
            preparedQuery.setInt(7, friendliness);
            
            preparedQuery.executeUpdate();
            response.sendRedirect("SearchUserRatings?id=" + ratingFor + "");
            
        }
        catch(SQLException sqlE)
        {
            sqlE.printStackTrace();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
               
    }
}
