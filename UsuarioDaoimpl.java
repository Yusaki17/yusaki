
package pe.edu.upeu.clase08.daoimpl;

import pe.edu.upeu.clase08.dao.IUsuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import pe.edu.upeu.clase08.config.Conexion;
/**
 *
 * @author xj109
 */
public class UsuarioDaoimpl implements IUsuario{
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection cx;
    @Override
    public int login(String correo, String clave) {
        final String SQL_LOGIN = "SELECT *FROM usuario WHERE correo=? and clave=?";
        int x = 0;
        try {
            cx = Conexion.getConnection();
            ps = cx.prepareStatement(SQL_LOGIN);
            ps.setString(1, correo);
            ps.setString(2, clave);
            rs = ps.executeQuery();
            while (rs.next()) {                
                x = 1;
            }
        } catch (Exception e) {
            System.out.println("Error: "+e);
        }
        return x;
    }
    
}
