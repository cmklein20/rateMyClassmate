package rateMyClassmate;

import java.util.ArrayList;
import java.sql.*;

/**
 * The teacher JavaBean class.
 * Demonstrates object-relational mapping where a JavaBean class
 * represents a model object that is persisted to a database table.
 */
public class User implements java.io.Serializable
{
    private int userID;
    private String userName;
    private String firstName;
    private String lastName;
    private String password;
    private String email;
    

    /**
     * Default constructor for User Javabean.
     */
    public User()
    {
        this(0, "", "", "", "", "");
    }

    /**
     * Constructor for User Javabean.
     * @param id The users ID number
     * @param userName The users username
     * @param firstName The users first name
     * @param lastName The users last name
     * @param password The users password
     * @param email The users email address
     */
    public User(int id, String userName, 
                String firstName, String lastName, 
                String password, String email)
    {
        this.userID = id;
        this.userName = userName;
        this.firstName = firstName;
        this.lastName = lastName;
        this.password = password;
        this.email = email;
    }

    /**
     * Getter method for the userID field
     * @return The user's ID
     */
    public int getId() { return userID; }
    /**
     * Getter method for the lastName field
     * @return The user's last name
     */
    public String getLastName() { return lastName; }
    /**
     * Getter method for the firstName field
     * @return The user's first name
     */
    public String getFirstName() { return firstName; }
    /**
     * Getter method for the userName field
     * @return The user's username
     */
    public String getUserName() {return userName;}
    /**
     * Getter method for the password field
     * @return The user's password
     */
    public String getPassword() {return password;}
    /**
     * Getter method for the email address field
     * @return The user's email address
     */
    public String getEmail() {return email;}

    /**
     * Setter method for the userID field
     * @param id The user's ID number
     */
    public void setId(int id) { this.userID = id; }
    /**
     * Setter method for the lastName field
     * @param lastName The last name of the user
     */
    public void setLastName(String lastName) { this.lastName = lastName;}
    /**
     * Setter method for the firstName field
     * @param firstName The first name of the user
     */
    public void setFirstName(String firstName) {this.firstName = firstName;}
    /**
     * Setter method for the userName field
     * @param userName The username associated with the user
     */
    public void setUserName(String userName) {this.userName = userName;}
    /**
     * Setter method for the password field
     * @param password The user's password
     */
    public void setPassword(String password) {this.password = password;}

    /**
     * Query and return a list of users from the query.
     * @param connection the database connection to use.
     * @param query the query string.
     * @return the list of School JavaBeans.
     * @throws SQLException if a database error occurred.
     */
    public static ArrayList<User> doQuery(Connection connection, String query)
        throws SQLException
    {
        // Make the query.
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(query);

        // Loop over the result set and contruct the list 
        // of teacher JavaBeans.
        ArrayList<User> users = new ArrayList<>();
        while (resultSet.next()) 
        {
            User user = new User(resultSet.getInt("userID"),
                                    resultSet.getString("userName"), 
                                    resultSet.getString("firstName"),
                                    resultSet.getString("lastName"),
                                    resultSet.getString("password"),
                                    resultSet.getString("email"));
            users.add(user);
        }

        statement.close();
        resultSet.close();

        return users;
    }
}