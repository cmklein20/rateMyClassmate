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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lt
 */
public class WriteReview extends HttpServlet 
{
    private DatabaseConnection dbConnection;
    private Connection connection;
    
    public WriteReview()
    {
        dbConnection = new DatabaseConnection();
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        int reviewFor = Integer.parseInt(request.getParameter("reviewFor"));
        int reviewBy = 10000;
        String reviewText = request.getParameter("reviewText");
        String schoolName = request.getParameter("schoolName");
        String klass = request.getParameter("class");
        
        try
        {
            connection = dbConnection.getConnection();
            PreparedStatement preparedQuery = null;
            
            School school = new School();
            school.createQuery(schoolName);
            ArrayList<School> schools = school.doQuery(connection);
            int schoolID = 0;
            if (!schools.isEmpty())
            {
                schoolID = schools.get(0).getSchoolId();
            }
            
            String query = "INSERT INTO reviews (reviewFor, reviewBy, text, school, class) VALUES(?, ?, ?, ?, ?)";
            preparedQuery = connection.prepareStatement(query);
            
            preparedQuery.setInt(1, reviewFor);
            preparedQuery.setInt(2, reviewBy);
            preparedQuery.setString(3, reviewText); 
            preparedQuery.setInt(4, schoolID);
            preparedQuery.setString(5, klass);
            
            
            preparedQuery.executeQuery();
            
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
