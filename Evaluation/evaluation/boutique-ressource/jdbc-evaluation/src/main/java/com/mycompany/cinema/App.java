package com.mycompany.cinema;

import java.sql.*;
/**
 * Exemple avec le model Entity / Repository.
 */
public class App 
{ 
    /**
     * Point d'entrée du programme en java.
     * 
     * @param args
     */
    public static void main( String[] args )
    {
        String url = "jdbc:mysql://localhost:3306/boutique?useSSL=false";
        String login ="root";
        String mdp = "";
        Connection connection = null;
        
        try
        {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	connection = DriverManager.getConnection(url, login, mdp);
        	System.out.println("Connection Established");
        }
        catch (Exception e)
        {
        	e.printStackTrace();
        }
    }
}
