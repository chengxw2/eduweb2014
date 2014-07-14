package ar.edu.unlam.eduweb


class Actividad {
	static belongsTo = [curso: Curso]
	Date fechaInicio
	Date fechaEntrega
	String titulo
	String consigna
	Integer nota
	File archivo
	Integer estado

	static constraints = {
	}
}
