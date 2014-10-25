package rateMyClassmate;
import java.util.ArrayList;
import java.sql.*;

public class SchoolDatabaseTest
{
    /**
     * Fetch and print the students taught by each teacher.
     * @param conn the database connection to use.
     * @param teachers the list of teachers.
     * @throws SQLException if a database error occurred.
     */
    private void studentsTaughtByTeachers(Connection conn,
                                          ArrayList<Teacher> teachers)
        throws SQLException
    {
        // Note the two ? parameters of this query string.
        String query = "SELECT student.first, student.last, subject " +
                       "FROM student, teacher, class, student_class " +
                       "WHERE teacher.last = ? AND teacher.first = ? " +
                       "AND teacher_id = teacher.id " +
                       "AND code = class_code AND student.id = student_id " +
                       "ORDER BY subject, student.last";
        PreparedStatement ps = conn.prepareStatement(query);

        System.out.println();
        System.out.println("===========================");
        System.out.println("STUDENTS TAUGHT BY TEACHERS");
        System.out.println("===========================");

        for (Teacher teacher : teachers) {
            String lastName = teacher.getLastName();
            String firstName = teacher.getFirstName();

            System.out.println();
            System.out.println("STUDENTS OF TEACHER " +
                               firstName + " " + lastName);
            System.out.println();

            // Query for the students.
            ArrayList<StudentSubject> studentSubjects =
                              StudentSubject.doQuery(conn, ps, teacher);

            System.out.printf("%-12s%-12s%-20s\n",
                              "First name", "Last name", "Subject");
            System.out.println("-----------------------------");
            
            // Loop over the JavaBeans and print each student's
            // first and last names and the class subject.
            for (StudentSubject studentSubject : studentSubjects) {
                System.out.printf("%-12s%-12s%-20s\n",
                                  studentSubject.getFirstName(),
                                  studentSubject.getLastName(),
                                  studentSubject.getSubject());
            }
        }
        
        ps.close();
    }

    private static String QUERY_ALL_TEACHERS = "SELECT * FROM teacher";

    /**
     * Fetch, print, and return the list of all teachers.
     * @param conn the database connection to use.
     * @throws SQLException if a database error occurred.
     */
    private ArrayList<Teacher> printTeachers(Connection conn)
        throws SQLException
    {
        ArrayList<Teacher> teachers = 
                               Teacher.doQuery(conn, QUERY_ALL_TEACHERS);

        System.out.println();
        System.out.println("============");
        System.out.println("ALL TEACHERS");
        System.out.println("============");
        System.out.println();
        System.out.printf("%-5s%-12s%-12s\n", "Id", "Last name", "First name");
        System.out.println("-----------------------------");

        for (Teacher teacher : teachers) {
            System.out.printf("%-5d%-12s%-12s\n", teacher.getId(),
                                                  teacher.getLastName(),
                                                  teacher.getFirstName());
        }

        return teachers;
    }

    private void modifyTeachers(Connection conn)
        throws SQLException
    {
        String insert = "INSERT INTO teacher (id, last, first, contact_id) " +
                        "VALUES (234234, 'Mak', 'Ron', 1), " +
                        "(23467, 'Wilson', 'Ron', 2) ";

        System.out.println();
        System.out.print("    Insert: ");

        Statement stmt = conn.createStatement();
        int rowCount = stmt.executeUpdate(insert);

        System.out.println(rowCount + " new rows.");
        printTeachers(conn);

        String update = "UPDATE teacher " +
                        "SET first = 'Ronald' " +
                        "WHERE first = 'Ron'";

        System.out.println();
        System.out.print("    Update: ");

        rowCount = stmt.executeUpdate(update);

        System.out.println(rowCount + " rows changed.");
        printTeachers(conn);

        String delete = "DELETE FROM teacher " +
                        "WHERE first LIKE 'Ron%'";

        System.out.println();
        System.out.print("    Delete: ");

        rowCount = stmt.executeUpdate(delete);

        System.out.println(rowCount + " rows removed.");
        printTeachers(conn);
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

    private static String DB_URL = "jdbc:mysql://localhost:3306/school";
    private static String USERNAME = "root";
    private static String PASSWORD = "baseball";

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)
    {
        SchoolDatabaseTest test = new SchoolDatabaseTest();
        Connection conn;
        
        try {
            conn = test.connect(DB_URL, USERNAME, PASSWORD);

            ArrayList<Teacher> teachers = test.printTeachers(conn);
            test.modifyTeachers(conn);
            test.studentsTaughtByTeachers(conn, teachers);

            conn.close();
        }
        catch(Exception ex) {
            ex.printStackTrace();
        }
    }
}