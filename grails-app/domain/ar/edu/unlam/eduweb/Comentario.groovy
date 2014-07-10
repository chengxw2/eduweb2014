package ar.edu.unlam.eduweb

import java.util.Date;

class Comentario {
	Usuario autorComentario
	Date fechaComentario
	String mensajeComentario
	static belongsTo = TemaForo

    static constraints = {
    }
}
