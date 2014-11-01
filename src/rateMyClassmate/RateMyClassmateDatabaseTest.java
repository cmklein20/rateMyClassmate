package rateMyClassmate;
import java.util.ArrayList;
import java.sql.*;

public class RateMyClassmateDatabaseTest
{

    private static String QUERY_ALL_USERS = "SELECT * FROM Users";

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
            System.out.printf("%-5d%-12s%-12s\n", user.getId(),
                                                  user.getLastName(),
                                                  user.getFirstName());
        }
        return users;
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
        Connection conn;
        
        try {
            conn = test.connect(DB_URL, USERNAME, PASSWORD);

            ArrayList<User> users = test.printUsers(conn);

            conn.close();
        }
        catch(Exception ex) {
            ex.printStackTrace();
        }
    }
}