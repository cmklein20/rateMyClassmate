package Controller;
import Model.User;
import Model.School;
import Model.Review;
import Model.DatabaseConnection;
import java.util.ArrayList;
import java.sql.*;

public class RateMyClassmateDatabaseTest
{

    private static String QUERY_ALL_USERS = "SELECT * FROM Users";
    private static String QUERY_ALL_SCHOOLS = "SELECT * FROM School";
    private static String QUERY_ALL_REVIEWS = "SELECT * FROM Reviews";

    /**
     * Fetch, print, and return the list of all teachers.
     * @param conn the database connection to use.
     * @throws SQLException if a database error occurred.
     */
    private ArrayList<User> printUsers(Connection conn)
        throws SQLException
    {
        ArrayList<User> users = User.doQuery(conn, QUERY_ALL_USERS);

        System.out.println();
        System.out.println("============");
        System.out.println("ALL USERS");
        System.out.println("============");
        System.out.println();
        System.out.printf("%-5s%-12s%-12s\n", "Id", "Last name", "First name");
        System.out.println("-----------------------------");

        for (User user : users) {
            System.out.printf("%-5d %-12s%-12s\n", user.getId(),
                                                  user.getLastName(),
                                                  user.getFirstName());
        }
        return users;
    }
    
    private ArrayList<School> printSchools(Connection conn)
        throws SQLException
    {
        ArrayList<School> schools = School.doQuery(conn, QUERY_ALL_SCHOOLS);

        System.out.println();
        System.out.println("============");
        System.out.println("ALL Schools");
        System.out.println("============");
        System.out.println();
        System.out.printf("%-10s%-20s%-200s\n", "SchoolID", "Name", "State");
        System.out.println("-----------------------------");

        for (School school : schools) {
            System.out.printf("%-10d%-20s%-200s\n", school.getSchoolId(),
                                                  school.getName(),
                                                  school.getState());
        }
        return schools;
    }
    
    private ArrayList<Review> printReviews(Connection conn)
        throws SQLException
    {
        ArrayList<Review> reviews = Review.doQuery(conn, QUERY_ALL_REVIEWS);

        System.out.println();
        System.out.println("============");
        System.out.println("ALL Reviews");
        System.out.println("============");
        System.out.println();
        System.out.printf("%-12s %-10s %-10s %-10s %-20s %-5s\n", "Date", "ReviewBy", "ReviewFor", "School", "Class", "Review");
        System.out.println("-----------------------------");

        for (Review review : reviews) {
            System.out.printf("%-12s %-20d %-10d %-10s %-20s %-5s\n", 
                    review.getDate(),
                    review.getReviewBy(),
                    review.getReviewFor(),
                    review.getSchool(),
                    review.getUserClass(),
                    review.getReview());
        }
        return reviews;
    }

    /**
     * Make a connection to the database.
     * @param url the database URL.
     * @param username the username for the database.
     * @param password the password for the database.
     * @return the connection.
     * @throws Exception if an error occurred.
     */
    private Connection connect(String url, String username, String password)
        throws Exception
    {
        return DriverManager.getConnection(url, username, password);
    }

    
    private static String DB_URL = "jdbc:mysql://localhost:3306/RateMyClassmate";
    private static String USERNAME = "root";
    private static String PASSWORD = "";

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)
    {
        RateMyClassmateDatabaseTest test = new RateMyClassmateDatabaseTest();
        DatabaseConnection dbConnection = new DatabaseConnection(DB_URL, USERNAME, PASSWORD);
        Connection connection;
        
        try {
            connection = dbConnection.getConnection();

            ArrayList<User> users = test.printUsers(connection);
            ArrayList<Review> reviews = test.printReviews(connection);
            //ArrayList<School> schools = test.printSchools(connection);

            connection.close();
        }
        catch(Exception ex) {
            ex.printStackTrace();
        }
    }
}