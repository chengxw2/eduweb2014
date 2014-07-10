package ar.edu.unlam.eduweb

import java.util.Date;

class TemaForo {
	static belongsTo = Curso
	String titulo
	String mensaje
	Date fecha
	Usuario autorTema
	CategoriaTema categoriaForo
	static hasMany = [comentarios: Comentario]

    static constraints = {
    }
}
