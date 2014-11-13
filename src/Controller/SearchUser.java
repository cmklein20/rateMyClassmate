package Controller;

import Model.SearchResults;

import java.io.*;
import java.util.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchUser extends HttpServlet {

    private Connection conn;

    private Connection connect(String url, String username, String password)
            throws Exception {
        return DriverManager.getConnection(url, username, password);
    }

    public String convertToStars(int stars) {
        String starsText = "";

        for (int i = 0; i < stars; i++) {
            starsText += "<span class=\"glyphicon glyphicon-star\"></span>";
        }

        return starsText;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // JDBC driver name and database URL
        //final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        final String DB_URL = "jdbc:mysql://localhost:3306/RateMyClassmate";
        String fName = request.getParameter("studentName");
        String lName = request.getParameter("lastName");
        // Database credentials
        final String USER = "root";
        final String PASS = "";

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
            // Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            // Open a connection
            conn = this.connect(DB_URL, USER, PASS);

            // Execute SQL query
            SearchResults searchResults = new SearchResults();
            searchResults.createQuery(fName, lName);
            ArrayList<SearchResults> rs = searchResults.doQuery(conn);

            // Extract data from result set
            for (SearchResults results : rs) {
                // Retrieve by column name
                String firstName = results.getFirstName();
                String lastName = results.getLastName();
                int knowledge = results.getKnowledge();
                int avail = results.getAvailability();
                int mot = results.getMotivation();
                int friendly = results.getFriendlyness();

                //String firstName = rs.getString("firstName");
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
