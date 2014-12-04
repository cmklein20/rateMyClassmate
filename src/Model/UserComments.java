package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author lt
 */
public class UserComments implements java.io.Serializable {

    String query;
    private String comment = "";
    public UserComments() {
        this("");

    }

    public UserComments(String comment) {
        this.comment = comment;
    }

    public ArrayList<UserComments> doQuery(Connection connection) throws SQLException {
        // Make the query.
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(query);

        // Loop over the result set and contruct the list 
        // of teacher JavaBeans.
        ArrayList<UserComments> searchResults = new ArrayList<>();
        while (resultSet.next()) {
           UserComments comm =  new UserComments(resultSet.getString("text"));
           searchResults.add(comm);
        }

        statement.close();
        resultSet.close();

        return searchResults;

    }

    public void createQuery(int id) {
        query = "SELECT text"
                + " FROM Reviews join Users on Users.userID = Reviews.reviewFor"
                + " WHERE userID = " + Integer.toString(id) + ";";
        
        
        
         System.out.println(query);

    }
    
    public String getComment(){
        return this.comment;
    }

}