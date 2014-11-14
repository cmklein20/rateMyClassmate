/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.DatabaseConnection;
import Model.SearchForUser;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
public class SearchUsers extends HttpServlet 
{
    private DatabaseConnection dbConnection;
    private Connection connection;
    
    public SearchUsers()
    {
        dbConnection = new DatabaseConnection();
    }
    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String fName = request.getParameter("studentName");
        String lName = request.getParameter("lastName");
        String school = request.getParameter("schoolName");
        
        // Set response content type
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String title = "Search Results";
        String docType = "<!doctype html public \"-//w3c//dtd html 4.0 "
                + "transitional//en\">\n";
        out.println(docType + "<html>\n" + "<head><link href=\"css/bootstrap.min.css\" rel=\"stylesheet\"><title>" + title
                + "</title></head>\n" + "<body><jsp:include page=\"header.html\"/>\n"
                + "<h1 align=\"center\">" + title + "</h1>\n");
        
        try 
        {
            connection = dbConnection.getConnection();
            
            SearchForUser searchForUser= new SearchForUser();
            searchForUser.doQuery();
            ArrayList<SearchForUser> resultSet = new ArrayList<>();
            
            for (SearchForUser results : resultSet) {
                // Retrieve by column name
                String firstName = results.getFirstName();
                String lastName = results.getLastName();
                String schoolName = results.getSchoolName();
                
                //String firstName = resultSet.getString("firstName");
                // Display values
                out.print("First Name: <b> " + firstName + " </b> <br>");
                out.print(" Last Name: <b> " + lastName + " </b> <br>");
                out.print(" School: <b> " + schoolName + " </b> <br>");
                out.println("");

            }
            out.println("</body></html>");

			// Clean-up environment
            connection.close();
        }
         catch (SQLException se) {
            // Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            // Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            // finally block used to close resources

            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }// end finally try
        } // end try
        
    }
    
}
