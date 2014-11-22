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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

/**
 *
 * @author lt
 */
public class SearchUsers extends HttpServlet {

    private DatabaseConnection dbConnection;
    private Connection connection;

    public SearchUsers() {
        dbConnection = new DatabaseConnection();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fName = request.getParameter("studentName");
        String lName = request.getParameter("lastName");
        String school = request.getParameter("schoolName");

        // Set response content type
        try {
            connection = dbConnection.getConnection();

            SearchForUser searchForUser = new SearchForUser();
            searchForUser.createQuery(fName, lName, school);
            ArrayList<SearchForUser> resultSet = searchForUser.doQuery(connection);
            
            request.setAttribute("userList", resultSet);
            
            request.getRequestDispatcher("/searchResults.jsp").forward(request,
                    response);
            

            
            // Clean-up environment
            connection.close();
        } catch (SQLException se) {
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
