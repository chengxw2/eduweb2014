package ar.edu.unlam.eduweb

class Curso {
	String nombre;
	static hasMany = [temasforo:TemaForo, cursousuarios:CursoUsuario, eventos: Evento, actividades: Actividad]

    static constraints = {
    }
}
