package ar.edu.unlam.eduweb

import java.util.Date;

class Evento {
	static belongsTo = Curso
	Date fechaHoraInicio
	Date fechaHoraFin
	String tituloEvento
	String descripcionEvento

    static constraints = {
    }
}
