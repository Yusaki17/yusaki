package pe.edu.upeu.examen.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pe.edu.upeu.examen.config.Conexion;
import pe.edu.upeu.examen.dao.UsuarioDAO;
import pe.edu.upeu.examen.entity.Usuario;

public class UsuarioDaoImpl implements UsuarioDAO{
	private PreparedStatement ps;
	private ResultSet rs;
	private Connection cx;
	@Override
	public int create(Usuario t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Usuario t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Usuario read(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Usuario> readAll() {
		// TODO Auto-generated method stub
		String SQL = "SELECT *FROM usuario";
		List<Usuario> lista = new ArrayList<>();
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			rs = ps.executeQuery();
			while(rs.next()) {
				Usuario us = new Usuario();
				us.setUsuarioid(rs.getInt("UsuarioID"));
				us.setUsername(rs.getString("username"));
				us.setPassword(rs.getString("clave"));
				lista.add(us);  
			}
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error:"+e);
		}
		return lista;
	}

}
