package ar.edu.unlam.eduweb

import java.util.Date;

class Comentario {
	Date fecha
	String mensaje
	static belongsTo = [autor:Usuario, temaForo:TemaForo]

    static constraints = { 
    }
}
