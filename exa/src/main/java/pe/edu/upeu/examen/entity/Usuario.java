package pe.edu.upeu.examen.entity;

public class Usuario {
	private int usuarioid;
	private String username;
	private String password;
	public Usuario() {
		super();
	}
	public Usuario(int usuarioid, String username, String password) {
		super();
		this.usuarioid = usuarioid;
		this.username = username;
		this.password = password;
	}
	public int getUsuarioid() {
		return usuarioid;
	}
	public void setUsuarioid(int usuarioid) {
		this.usuarioid = usuarioid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}