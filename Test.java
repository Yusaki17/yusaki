package pe.edu.upeu.clase08.test;
import pe.edu.upeu.clase08.config.Conexion;
import pe.edu.upeu.clase08.dao.IUsuario;
import pe.edu.upeu.clase08.daoimpl.UsuarioDaoimpl;
/**
 *
 * @author xj109
 */
public class Test {
static IUsuario iu = new UsuarioDaoimpl();
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        login();
    }
    static void conec(){
        if (Conexion.getConnection()!=null) {
            System.out.println("Conectado...!");
        } else {
            System.out.println("No Conectado");
        }
    }
    static void login(){
        System.out.println(iu.login("giezivivas@gmail.com", "123456"));
    }
}
