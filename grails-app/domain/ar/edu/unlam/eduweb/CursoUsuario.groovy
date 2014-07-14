package ar.edu.unlam.eduweb

class CursoUsuario {
	static belongsTo = [curso : Curso, usuario:Usuario]
	static constraints = {
    }
}
