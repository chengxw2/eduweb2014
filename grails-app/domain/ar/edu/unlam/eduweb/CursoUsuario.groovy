package ar.edu.unlam.eduweb

class CursoUsuario {
	Usuario usuario
	Curso curso
	static belongsTo = [curso : Curso, usuario:Usuario]
	static constraints = {
    }
}
