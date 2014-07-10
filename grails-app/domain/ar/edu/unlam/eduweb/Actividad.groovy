package ar.edu.unlam.eduweb

import java.util.Date;

class Actividad {
	static belongsTo = Curso;
	Date fechaInicio
	Date fechaEntrega
	Nota nota
	String titulo
	String consigna 
	EstadoActividad estado 

    static constraints = {
    }
}
