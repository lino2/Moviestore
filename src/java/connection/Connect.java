package connection;
import java.sql.*;
public class Connect {
 private String driver = "org.postgresql.Driver";
 private String host = "localhost:5432";
 private String dbname = "moviestore";
 private String user = "postgres";
 private String url = "jdbc:postgresql://" + host + "/" + dbname;
 private String pass = "krystian";
 private Connection connection;
 
 public Connect () {
    connection = makeConnection();
 }
 
 public Connection getConnection(){
    return(connection);
 }
 
 public void close() {
    try {
        connection.close();
    }
    catch (SQLException sqle){
        System.err.println("Blad przy zamykaniu polaczenia: " + sqle);
    }
 }
 
 public Connection makeConnection(){
    try {
        Class.forName(driver);
        Connection connection = DriverManager.getConnection(url, user, pass);
        return(connection);
    }
    catch(ClassNotFoundException cnfe) {
        System.err.println("Blad ladowania sterownika: " + cnfe);
        return(null);
    }
    catch(SQLException sqle) {
        System.err.println("Blad przy nawiązywaniu polaczenia: " + sqle);
        return(null);
    }
 }
}
