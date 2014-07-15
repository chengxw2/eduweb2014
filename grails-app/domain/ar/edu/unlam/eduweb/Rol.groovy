package ar.edu.unlam.eduweb

class Rol {

	String authority
	static hasMany = [usuariosRol:UsuarioRol] 

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
}
