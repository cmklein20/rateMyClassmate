/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.DatabaseConnection;
import java.io.IOException;
import java.sql.Connection;
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
        String reviewFor = request.getParameter("reviewFor");
        String reviewBy = request.getParameter("reviewBy");
        String reviewText = request.getParameter("reviewText");
               
    }
    
}
