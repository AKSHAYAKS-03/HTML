/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;
import java.sql.*;
import java.sql.Connection;

import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author aksha
 */
public class ConnectionProvider1 {
    public static Connection getCon(){
        Connection con;
        try {        
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank?zeroDateTimeBehavior=convertToNull","root","root@123");
        return con;
        
        }
       
        catch (SQLException ex) {
            Logger.getLogger(ConnectionProvider1.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    
}
