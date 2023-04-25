
package DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBConnection {
    Connection cn = null;
    public DBConnection(){
        try{Class.forName("com.mysql.cj.jdbc.Driver");
        String dbURL = "jdbc:mysql://localhost:3306/rewardrecognition";
        String dbName = "root";
        String dbPassword = "";
    
        cn = DriverManager.getConnection(dbURL,dbName,dbPassword);
            System.out.println("DBConnected");
       }
        catch(SQLException | ClassNotFoundException e){
        System.out.println("error" + e);
        }
    }
    public static void main(String[] args) {
        DBConnection dbc = new DBConnection();
    }
    public PreparedStatement getStatement(String query){
       PreparedStatement pstn = null;
       try{
           pstn = cn.prepareStatement(query);
       }
       catch(SQLException e){
           System.out.println("error" +e);
       }
       return pstn;
    }
}
