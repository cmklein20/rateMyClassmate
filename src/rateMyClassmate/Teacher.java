package rateMyClassmate;

import java.util.ArrayList;
import java.sql.*;

/**
 * The teacher JavaBean class.
 * Demonstrates object-relational mapping where a JavaBean class
 * represents a model object that is persisted to a database table.
 */
public class Teacher implements java.io.Serializable
{
    private int id;
    private String lastName;
    private String firstName;

    /**
     * Default constructor.
     */
    public Teacher()
    {
        this(0, "", "");
    }

    /**
     * Constructor.
     */
    public Teacher(int id, String lastName, String firstName)
    {
        this.id = id;
        this.lastName = lastName;
        this.firstName = firstName;
    }

    /**
     * Getters.
     */
    public int getId() { return id; }
    public String getLastName() { return lastName; }
    public String getFirstName() { return firstName; }

    /**
     * Setters.
     */
    public void setId(int id) { this.id = id; }
    public void setLastName(String lastName) { this.lastName = lastName; }
    public void setFirstName(String firstName) {this.firstName = firstName; }

    /**
     * Query and return a list of teachers from the query.
     * @param conn the database connection to use.
     * @param query the query string.
     * @return the list of teacher JavaBeans.
     * @throws SQLException if a database error occurred.
     */
    public static ArrayList<Teacher> doQuery(Connection conn,
                                             String query)
        throws SQLException
    {
        // Make the query.
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(query);

        // Loop over the result set and contruct the list 
        // of teacher JavaBeans.
        ArrayList<Teacher> teachers = new ArrayList<Teacher>();
        while (rs.next()) {
            Teacher teacher = new Teacher(rs.getInt("id"),
                                          rs.getString("last"),
                                          rs.getString("first"));
            teachers.add(teacher);
        }

        stmt.close();
        rs.close();

        return teachers;
    }
}