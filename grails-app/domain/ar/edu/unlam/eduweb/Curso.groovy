package ar.edu.unlam.eduweb

class Curso {
	String nombre;
	String descripcion;
	static hasMany = [temasForo:TemaForo, cursoUsuarios:CursoUsuario, eventos: Evento, actividades: Actividad]


	
    static constraints = {
    }
	
	int getCantidadTemas(){
		 TemaForo.findAllByCursoAndBloqueado(this,false).size()
		
		
	}
}
