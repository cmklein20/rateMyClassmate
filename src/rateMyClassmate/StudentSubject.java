package rateMyClassmate;

import java.util.ArrayList;
import java.sql.*;

/**
 * The student-subject JavaBean class.
 * Demonstrates object-relational mapping where a JavaBean class
 * represents the results of a query.
 */
public class StudentSubject implements java.io.Serializable
{
    private String lastName;
    private String firstName;
    private String subject;

    /**
     * Default constructor.
     */
    public StudentSubject()
    {
        this("", "", "");
    }

    /**
     * Constructor.
     */
    public StudentSubject(String lastName, String firstName,
                          String subject)
    {
        this.lastName = lastName;
        this.firstName = firstName;
        this.subject = subject;
    }

    /**
     * Getters.
     */
    public String getLastName() { return lastName; }
    public String getFirstName() { return firstName; }
    public String getSubject() { return subject; }

    /**
     * Setters.
     */
    public void setLastName(String lastName) { this.lastName = lastName; }
    public void setFirstName(String firstName) {this.firstName = firstName; }
    public void setSubject(String subject) {this.subject = subject; }

    /**
     * Query and return a list of student-subjects from the query.
     * @param conn the database connection to use.
     * @param ps the prepared statement.
     * @param teacher a teacher.
     * @return the list of student-subject JavaBeans.
     * @throws SQLException if a database error occurred.
     */
    public static ArrayList<StudentSubject> doQuery(
                                                Connection conn,
                                                PreparedStatement ps,
                                                Teacher teacher)
        throws SQLException
    {
        // Set the two parameters of the prepared query statement.
        ps.setString(1, teacher.getLastName());
        ps.setString(2, teacher.getFirstName());

        // Make the query.
        ps.executeQuery();
        ResultSet rs = ps.getResultSet();

        // Loop over the result set and contruct the list
        // of student JavaBeans.
        ArrayList<StudentSubject> studentSubjects =
                                      new ArrayList<StudentSubject>();
        while (rs.next()) {
            StudentSubject studentSubject =
                               new StudentSubject(rs.getString("last"),
                                                  rs.getString("first"),
                                                  rs.getString("subject"));
            studentSubjects.add(studentSubject);
        }

        rs.close();

        return studentSubjects;
    }
}