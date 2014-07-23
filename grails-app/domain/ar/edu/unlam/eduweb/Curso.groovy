package ar.edu.unlam.eduweb

class Curso {
	String nombre;
	String descripcion;
	static hasMany = [temasForo:TemaForo, cursoUsuarios:CursoUsuario, eventos: Evento, actividades: Actividad, apuntes: Apunte]


	
    static constraints = {
    }
	
	int getCantidadTemas(){
		 TemaForo.findAllByCursoAndBloqueado(this,false).size()
		
    }
}
