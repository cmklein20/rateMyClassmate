package Controller;

import Model.UserRatings;
import Model.DatabaseConnection;
import java.io.*;
import java.util.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * SearchUserRatings.java is the servlet that controls the process of searching 
 * for student ratings and displaying results to a 'results' page. 
 * Future release will restrict purpose of this servlet to searching for user
 * and provoking a jsp to display a list of choices of users that can be chosen to be displayed
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
    public SearchUserRatings()
    {
        dbConnection = new DatabaseConnection();
    }

    /**
     * convertToStars: the purpose of this method is to convert a retrieved 'score' of a 
     * rating and to convert it to a string that displays star icons
     *
     * @param stars the number indicating the score of a specific personality characteristic 
     * @return 'starsText' The string representing a visual representation of the 'score' 
     * of any personality characteristic
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
     * HttpServletRequest and HttpServletResponse, and retrieves data from the server
     * in order to return user data
     *
     * @param HttpServletRequest object that provides request information 
     * @param HttpServletResponse  object to pass on servlet information 
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String fName = request.getParameter("studentName");
        String lName = request.getParameter("lastName");

        // Set response content type
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String title = "Search Results";
        String docType = "<!doctype html public \"-//w3c//dtd html 4.0 "
                + "transitional//en\">\n";
        out.println(docType + "<html>\n" + "<head><link href=\"css/bootstrap.min.css\" rel=\"stylesheet\"><title>" + title
                + "</title></head>\n" + "<body><jsp:include page=\"header.html\"/>\n"
                + "<h1 align=\"center\">" + title + "</h1>\n");
        try {
            // Open a connection
            conn = dbConnection.getConnection();

            // Execute SQL query
            UserRatings userRatingSearchResults = new UserRatings();
            userRatingSearchResults.createQuery(fName, lName);
            ArrayList<UserRatings> resultSet = userRatingSearchResults.doQuery(conn);

            // Extract data from result set
            for (UserRatings results : resultSet) {
                // Retrieve by column name
                String firstName = results.getFirstName();
                String lastName = results.getLastName();
                int knowledge = results.getKnowledge();
                int avail = results.getAvailability();
                int mot = results.getMotivation();
                int friendly = results.getFriendlyness();

                //String firstName = resultSet.getString("firstName");
                // Display values
                out.println("First Name: <b> " + firstName + " </b> <br>");
                out.println("Last Name: <b> " + lastName + " </b> <br>");
                out.println("Knowledge: <b> " + convertToStars(knowledge) + " </b> <br>");
                out.println("Availability: <b> " + convertToStars(avail) + " </b> <br>");
                out.println("Motivation: <b> " + convertToStars(mot) + " </b> <br>");
                out.println("Friendliness: <b> " + convertToStars(friendly) + " </b> <br><br>");

            }
            out.println("</body></html>");

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
