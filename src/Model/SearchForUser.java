/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



/**
 *
 * @author 
 */
public class SearchForUser implements Serializable
{
    private String query;
    private String firstName;
    private String lastName;
    private String schoolName;
    private int userID;
    
    public SearchForUser()
    {
        this(0,"","","");
    }
    
    
    public SearchForUser(int userID, String fname, String lname, String schoolName)
    {
        query = "";
        this.userID = userID;
        this.firstName = fname;
        this.lastName = lname;
        this.schoolName = schoolName;
    }

    
     public void createQuery(String fName, String lName, String schoolName)
     {
         
         if(schoolName.equalsIgnoreCase("Select A School"))
         {
             query = "SELECT userID, firstName, lastName, School.name "
                + "FROM Users, School"
                + " WHERE Users.firstName=" + "\"" + fName + "\""
                + " AND Users.lastName=" + "\"" + lName + "\""
                + " AND School.schoolID=Users.schoolID";
         }
         else
         {
             query = "SELECT userID, firstName, lastName, School.name "
                + "FROM Users, School"
                + " WHERE School.name=" + "\"" + schoolName + "\""
                + " AND Users.firstName=" + "\"" + fName + "\""
                + " AND Users.lastName=" + "\"" + lName + "\""
                + " AND School.schoolID=Users.schoolID";
         }
        System.out.println(query);
    }
     
     public void createQueryOnId(int id){
         query = "SELECT userID, firstName, lastName, School.name " 
                 + "FROM Users, School "
                 + "WHERE userID=" +  id +  " AND School.schoolID=Users.schoolID";
     }
   
     public ArrayList<SearchForUser> doQuery(Connection connection)throws SQLException
    {
        // Make the query.
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(query);

        // Loop over the result set and contruct the list 
        // of teacher JavaBeans.
        ArrayList<SearchForUser> searchResultses = new ArrayList<>();
        while (resultSet.next()) 
        {
            SearchForUser searchResult = new SearchForUser(
                                        resultSet.getInt("userID"),
                                        resultSet.getString("firstName"),
                                        resultSet.getString("lastName"),
                                        resultSet.getString("name"));
            searchResultses.add(searchResult);
        }

        statement.close();
        resultSet.close();

        return searchResultses;
    }	
    
    public String getFirstName() { return firstName; }

    public void setFirstName(String firstName) { this.firstName = firstName; }

    public String getLastName() { return lastName; }

    public void setLastName(String lastName) { this.lastName = lastName; }
    
    public String getSchoolName() { return schoolName; }

    public void setSchoolName(String schoolName) { this.schoolName = schoolName; } 
    
    public int getID(){ return userID;}
    
}
