package ar.edu.unlam.eduweb

class Usuario {

	transient springSecurityService

	String nombre
	String apellido
	String dni
	String username
	String password
	String email
	
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	static hasMany = [cursosUsuario:CursoUsuario, temasForo:TemaForo, comentarios:Comentario, actividades:Actividad]
	
	Rol rol

	static transients = ['springSecurityService', 'rol']

	static constraints = {
		username blank: false, unique: true
		password blank: false
		
	} 

	static mapping = {
		password column: '`password`'
	}

	Set<Rol> getAuthorities() {
		UsuarioRol.findAllByUsuario(this).collect { it.rol }
	}
	
	Rol getRol () {
		//AMBOS EJEMPLOS RETORNAN Set<Rol>
		//1. Usando metodo COLLECT 
		//UsuarioRol.findByUsuario(this).collect { it.rol }
		
		//2. Retornando sin RETURN
		//def usuarioRol = UsuarioRol.findByUsuario(this)
		//usuarioRol.rol
		
		UsuarioRol.findByUsuario(this).rol
	}
	
	
	String getNombreCompleto () {
		apellido + ', ' + nombre
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}
}
