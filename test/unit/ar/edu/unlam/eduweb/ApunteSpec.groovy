package ar.edu.unlam.eduweb

class ApunteSpec  {

    String nombre
	Date fecha
	
	static belongsTo = [curso: Curso]
}
