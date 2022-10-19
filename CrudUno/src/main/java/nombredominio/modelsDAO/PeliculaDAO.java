package nombredominio.modelsDAO;

import java.sql.*;
import java.util.ArrayList;

import nombredominio.config.Conexion;
import nombredominio.models.Pelicula;

public class PeliculaDAO {
	Conexion conexion = new Conexion();
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	Statement statement;

	Pelicula pelicula = new Pelicula();
	ArrayList<Pelicula> peliculas = new ArrayList<Pelicula>();

	public boolean create() {
		return true;
	}

	public boolean delete(int id) {
		String sql = "DELETE FROM pelicula_tabla WHERE id = " + id;

		try {
			conn = conexion.getConnection();
			statement = conn.createStatement();
			statement.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return true;
	}

	public Pelicula update(Pelicula pelicula) {
		String sql = "UPDATE pelicula_tabla SET nombre = '" + pelicula.getNombre() + "', director = '" + pelicula.getDirector() + "', anio = '" + pelicula.getAnio()+ "WHERE id=" + pelicula.getId();
		
		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pelicula;
	}

	public Pelicula find(int id) {
		String sql = "SELECT * FROM pelicula_tabla WHERE id = " + id;

		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				pelicula.setId(rs.getInt("id"));
				pelicula.setNombre(rs.getString("nombre"));
				pelicula.setDirector(rs.getString("director"));
				pelicula.setAnio(rs.getInt("anio"));
				pelicula.setGenero(rs.getString("genero"));

				return pelicula;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Pelicula> getPeliculas() {
		return null;
	}
}
