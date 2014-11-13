package Model;

import java.util.ArrayList;
import java.sql.*;

public class School implements java.io.Serializable
{
	private int id;
	private String name;
	private String state;
	
        public School()
        {
            this(0,"","");
        }
        
	public School(int id, String name, String state)
        {
            this.id = id;
            this.name = name;
            this.state = state;
	}

	public int getSchoolId() { return id; }
        public String getName() { return name; }
        public String getState() { return state; }

	public void setSchoolId(int id) { this.id = id; }
	public void setName(String name) { this.name = name; }
	public void setState(String state) { this.state = state; }
	
    /**
     * Query and return a list of Schools from the query.
     * @param connection the database connection to use.
     * @param query the query string.
     * @return the list of School JavaBeans.
     * @throws SQLException if a database error occurred.
     */
    public static ArrayList<School> doQuery(Connection connection, String query)throws SQLException
    {
        // Make the query.
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(query);

        // Loop over the result set and contruct the list 
        // of teacher JavaBeans.
        ArrayList<School> schools = new ArrayList<>();
        while (resultSet.next()) 
        {
            School school = new School(resultSet.getInt("schoolID"),
                                        resultSet.getString("name"), 
                                        resultSet.getString("state"));
            schools.add(school);
        }

        statement.close();
        resultSet.close();

        return schools;
    }	
}
