package pe.edu.upeu.clase08.config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author xj109
 */
public class Conexion {
    private static final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
    private static final String DRIVER = "oracle.jdbc.OracleDriver";
    private static final String USER = "C##lp1g2";
    private static final String PASS = "1234567";
    private static Connection cx = null;
    
    public static Connection getConnection(){
        try {
            Class.forName(DRIVER);
            if (cx==null) {
                cx = DriverManager.getConnection(URL, USER, PASS);
            }
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error Conexion: "+e);
        }
        return cx;
    }
}
