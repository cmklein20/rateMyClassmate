
package rateMyClassmate;
import java.util.ArrayList;
import java.sql.*;

public class Review implements java.io.Serializable
{
    private int reviewFor;
    private int reviewBy;
    private Date date;
    private String review;
    private String userClass;
    private String school;
    
    public Review()
    {
        this(0,0, null,"","","");
    }
    
    public Review(int reviewForId, int reviewById, Date date,
                    String review, String userClass, String school)
    {
        this.reviewFor = reviewForId;
        this.reviewBy = reviewById;
        this.date = date;
        this.review = review;
        this.userClass = userClass;
        this.school = school;
    }
    
    public int getReviewFor() { return reviewFor; }
    public int getReviewBy() { return reviewBy; }
    public Date getDate() { return date; }
    public String getReview() { return review; }
    public String getUserClass() { return userClass; }
    public String getSchool() { return school; }
    
    public void setReviewFor(int reviewForId) { this.reviewFor = reviewForId; }
    public void setReviewBy(int reviewById) {  this.reviewBy = reviewById; }
    public void setDate(Date date) { this.date = date; }
    public void setReview(String review) { this.review = review; }
    public void setUserClass(String userClass) { this.userClass = userClass; }
    public void setSchool(String school) { this.school = school; }
    
    /**
     * Query and return a list of Reviews from the query.
     * @param connection the database connection to use.
     * @param query the query string.
     * @return the list of Review JavaBeans.
     * @throws SQLException if a database error occurred.
     */
    public static ArrayList<Review> doQuery(Connection connection, String query)
        throws SQLException
    {
        // Make the query.
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(query);

        // Loop over the result set and contruct the list 
        // of teacher JavaBeans.
        ArrayList<Review> reviews = new ArrayList<>();
        while (resultSet.next()) 
        {
            Review review = new Review(resultSet.getInt("reviewFor"),
                                        resultSet.getInt("reviewBy"), 
                                        resultSet.getDate("date"),
                                        resultSet.getString("text"),
                                        resultSet.getString("class"),
                                        resultSet.getString("school"));
            reviews.add(review);
        }

        statement.close();
        resultSet.close();

        return reviews;
    }	
}
