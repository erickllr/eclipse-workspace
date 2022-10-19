package nombredominio.models;

public class Pelicula {
	private int id, anio;
	private String nombre, director;

	public Pelicula(int id, int anio, String nombre, String director) {
		super();
		this.id = id;
		this.anio = anio;
		this.nombre = nombre;
		this.director = director;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAnio() {
		return anio;
	}

	public void setAnio(int anio) {
		this.anio = anio;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

}
