/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.DatabaseConnection;
import Model.UserComments;
import Model.UserRatings;
import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author arashzahoory
 */
@WebServlet(name = "AddNewUser", urlPatterns = {"/AddNewUser"})
public class AddNewUser extends HttpServlet {

    private DatabaseConnection dbConnection;
    private Connection conn;
    private int userID;

    public AddNewUser() 
    {
        dbConnection = new DatabaseConnection();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            /* TODO output your page here. You may use following sample code. */
//add a user to the database, take the form data and push in accordingly

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);

        String fName = request.getParameter("studentName");
        String lName = request.getParameter("lastName");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String schoolName = request.getParameter("schoolName");
        String userName = request.getParameter("userName");
        
        try {
            // Open a connection
            String query;
            conn = dbConnection.getConnection();
            Statement statement = conn.createStatement();
            
            //Get the ID number of the School
            query = "SELECT schoolID FROM School WHERE name="+ "\'" + schoolName + "\'";
            ResultSet resultSet = statement.executeQuery(query);
            int schoolID = 0;
            
            if(resultSet.next())
            {
                schoolID = resultSet.getInt(1); 
            }
            
            System.out.println("\n\n\n\n\n ID IS HERE=" + schoolID + "END ID\n\n\n\n\n");
            
            query = "INSERT into RateMyClassmate.Users (userName, firstName, lastName, password, email, schoolID) "
                    + "values (\"" + userName + "\", \"" + fName + "\", \"" + lName + "\", \"" + password + "\", \"" + email + "\", \"" + schoolID + "\");";
            

            statement.executeUpdate(query);      
            
            query = "SELECT userID from Users where userName="+ "\'" + userName + "\'";
            
            resultSet = statement.executeQuery(query);
            
            if(resultSet.next())
            {
                userID = resultSet.getInt(1); 
            }
            
            //now we have the userID for the user that we have put into the database
            //below 

  
            
            response.sendRedirect("SearchUserRatings?id=" + userID + "");
   
            // Clean-up environment
            conn.close();
        } catch (SQLException se) {
            // Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            // Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            // finally block used to close resources

            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }// end finally try
        } // end try
        

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
