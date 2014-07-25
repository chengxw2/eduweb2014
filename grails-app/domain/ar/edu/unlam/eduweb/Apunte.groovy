package ar.edu.unlam.eduweb

import java.util.Date;

class Apunte {
	static belongsTo = [curso:Curso]
	
	String nombre
	String contenido
	Date fecha


    static constraints = {
    }
}
