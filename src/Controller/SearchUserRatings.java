package Controller;

import Model.UserRatings;
import Model.DatabaseConnection;
import Model.UserComments;
import java.io.*;
import java.util.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * SearchUserRatings.java is the servlet that controls the process of searching
 * for student ratings and displaying results to a 'results' page. Future
 * release will restrict purpose of this servlet to searching for user and
 * provoking a jsp to display a list of choices of users that can be chosen to
 * be displayed
 *
 * @author Team Merge Monkeys
 * @version 1.90
 */
public class SearchUserRatings extends HttpServlet {

    private DatabaseConnection dbConnection;
    private Connection conn;

    /**
     * Constructor: utilized to create database connection object: dbConnection
     */
    public SearchUserRatings() {
        dbConnection = new DatabaseConnection();
    }

    /**
     * convertToStars: the purpose of this method is to convert a retrieved
     * 'score' of a rating and to convert it to a string that displays star
     * icons
     *
     * @param stars the number indicating the score of a specific personality
     * characteristic
     * @return 'starsText' The string representing a visual representation of
     * the 'score' of any personality characteristic
     */
    public String convertToStars(int stars) {
        String starsText = "";

        for (int i = 0; i < stars; i++) {
            starsText += "<span class=\"glyphicon glyphicon-star\"></span>";
        }

        return starsText;
    }

    /**
     * doGet: this doGet retrieves data sent as a form by index.jsp. It handles
     * HttpServletRequest and HttpServletResponse, and retrieves data from the
     * server in order to return user data
     *
     * @param HttpServletRequest object that provides request information
     * @param HttpServletResponse object to pass on servlet information
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
       

       
        try {
            // Open a connection
            conn = dbConnection.getConnection();

            // Execute SQL query
            UserRatings userRatingSearchResults = new UserRatings();
            UserComments userCommentsResults = new UserComments();
            userRatingSearchResults.createQuery(id);
            userCommentsResults.createQuery(id);
            ArrayList<UserRatings> resultSet = userRatingSearchResults.doQuery(conn);
            ArrayList<UserComments> resultSet2 = userCommentsResults.doQuery(conn);
            String[][] percents = userRatingSearchResults.setComputeAverage(resultSet);
            request.setAttribute("averageRatings", percents);
            request.setAttribute("userRatings", resultSet);
            request.setAttribute("userComments", resultSet2);
            request.getRequestDispatcher("/reviews.jsp").forward(request,
                    response);

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
}
