/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;



/**
 *
 * @author 
 */
public class SearchForUser implements Serializable
{
    private String query;
    
    public SearchForUser(){
        query = "";
    }
    
    public void createQuery(String fName, String lName, String school){
        //query = "SELECT * FROM Users, School WHERE Users.fName = \"" + fName + "\" and Users.lName = \"" + lName + "\" and School.name = \"" + school + "\"";
    }
   
    
    //doQuery(){ } //have the query that createQuery creates return data from the database
    //createQuery{ } //the query that searches for fName lName and SChool should be here
    //store the query in createQuery
    //have the query return data from the database in do
    
   
    
}
