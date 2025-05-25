package pe.edu.upeu.examen.test;

import com.google.gson.Gson;

import pe.edu.upeu.examen.config.Conexion;
import pe.edu.upeu.examen.dao.UsuarioDAO;
import pe.edu.upeu.examen.daoImpl.UsuarioDaoImpl;

public class Test {
static UsuarioDAO dao = new UsuarioDaoImpl();
static Gson gson = new Gson();
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println(gson.toJson(dao.readAll()));
		if(Conexion.getConexion()!=null) {
			System.out.println("Conectado");
		}else {
			System.out.println("No conectado");
			
		}
	}

}