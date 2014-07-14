package ar.edu.unlam.eduweb

import java.util.Date;

class TemaForo {
	static belongsTo = [curso:Curso]
	String titulo
	String mensaje
	Date fecha
	String categoria
	Boolean bloqueado
	static hasMany = [comentarios: Comentario]

    static constraints = {
    }
}
