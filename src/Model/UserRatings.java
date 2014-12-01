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
public class UserRatings implements java.io.Serializable {

    String query;
    private String firstName;
    private String lastName;
    private int knowledge;
    private int availability;
    private int motivation;
    private int dependability;

    public UserRatings() {
        this("", "", 0, 0, 0, 0, 0);

    }

    public UserRatings(String firstName, String lastName, int knowledge, int availability, int motivation, int dependability, int friendlyness) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.knowledge = knowledge;
        this.availability = availability;
        this.motivation = motivation;
        this.dependability = dependability;
        this.friendlyness = friendlyness;
    }

    public ArrayList<UserRatings> doQuery(Connection connection) throws SQLException {
        // Make the query.
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(query);

        // Loop over the result set and contruct the list 
        // of teacher JavaBeans.
        ArrayList<UserRatings> searchResultses = new ArrayList<>();
        while (resultSet.next()) {
            UserRatings searchResult = new UserRatings(
                    resultSet.getString("firstName"),
                    resultSet.getString("lastName"),
                    resultSet.getInt("knowledge"),
                    resultSet.getInt("availability"),
                    resultSet.getInt("motivation"),
                    resultSet.getInt("dependability"),
                    resultSet.getInt("friendliness"));
            searchResultses.add(searchResult);
        }

        statement.close();
        resultSet.close();

        return searchResultses;

    }

    public void createQuery(int id) {
        query = "SELECT *"
                + " FROM Ratings join Users on Users.userID = Ratings.ratingFor"
                + " WHERE userID = " + Integer.toString(id) + ";";
        
        
        
         System.out.println(query);

    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getKnowledge() {
        return knowledge;
    }

    public void setKnowledge(int knowledge) {
        this.knowledge = knowledge;
    }

    public int getAvailability() {
        return availability;
    }

    public void setAvailability(int availability) {
        this.availability = availability;
    }

    public int getMotivation() {
        return motivation;
    }

    public void setMotivation(int motivation) {
        this.motivation = motivation;
    }

    public int getDependability() {
        return dependability;
    }

    public void setDependability(int dependability) {
        this.dependability = dependability;
    }

    public int getFriendlyness() {
        return friendlyness;
    }

    public void setFriendlyness(int friendlyness) {
        this.friendlyness = friendlyness;
    }
    private int friendlyness;
}
