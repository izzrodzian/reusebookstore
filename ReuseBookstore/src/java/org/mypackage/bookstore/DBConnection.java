package org.mypackage.bookstore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection 
{
    private static Connection conn = null;
 
    private DBConnection()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/www_project","root","");
        }
        catch(ClassNotFoundException e)
        {
            e.printStackTrace();
        }
        catch(SQLException e1)
        {
            e1.printStackTrace();
        }
    }
    public static Connection getInstance()
    {
        if(conn==null)
            new DBConnection();
        return conn;
            
        
    }
}
