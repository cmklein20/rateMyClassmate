
package Model;
import java.util.ArrayList;
import java.sql.*;


public class Rating implements java.io.Serializable
{
    private int ratingFor;
    private int ratingBy;
    private int knowledge;
    private int availability;
    private int motivation;
    private int dependability;
    private int friendliness;
    
    public Rating()
    {
        this(0,0,0,0,0,0,0);
    }
    
    public Rating(int ratingForId, int ratingById, 
                    int knowledge, int availability,
                    int motivation, int dependability, int friendliness)
    {
        this.ratingFor = ratingForId;
        this.ratingBy = ratingById;
        this.knowledge = knowledge;
        this.availability = availability;
        this.motivation = motivation;
        this.dependability = dependability;
        this.friendliness = friendliness;
    }
    
    public int getRatingFor() { return ratingFor; }
    public int getRatingBy() { return ratingBy; }
    public int getKnowledge() { return knowledge; }
    public int getAvailability() { return availability; }
    public int getMotivation() { return motivation; }
    public int getDependability() { return dependability; }
    public int getFriendliness() { return friendliness; }
    
    public void setRatingFor(int ratingForId) { this.ratingFor = ratingForId; }
    public void setRatingBy(int ratingById) { this.ratingBy = ratingById; }
    public void setKnowledge(int knowledge) { this.knowledge = knowledge; }
    public void setAvailability(int availability) { this.availability = availability; }
    public void setMotivation(int motivation) { this.motivation = motivation; }
    public void setDependability(int dependability) { this.dependability = dependability; }
    public void setFriendliness(int friendliness) { this.friendliness = friendliness; }
    
    /**
     * Query and return a list of Ratings from the query.
     * @param connection the database connection to use.
     * @param query the query string.
     * @return the list of Rating JavaBeans.
     * @throws SQLException if a database error occurred.
     */
    public static ArrayList<Rating> doQuery(Connection connection, String query)
        throws SQLException
    {
        // Make the query.
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(query);

        // Loop over the result set and contruct the list 
        // of teacher JavaBeans.
        ArrayList<Rating> ratings = new ArrayList<>();
        while (resultSet.next()) 
        {
            Rating rating = new Rating(resultSet.getInt("ratingFor"),
                                        resultSet.getInt("ratingBy"), 
                                        resultSet.getInt("knowledge"),
                                        resultSet.getInt("availability"),
                                        resultSet.getInt("motivation"),
                                        resultSet.getInt("dependability"),
                                        resultSet.getInt("friendliness"));
            ratings.add(rating);
        }

        statement.close();
        resultSet.close();

        return ratings;
    }	
    
}
