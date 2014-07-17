package ar.edu.unlam.eduweb

class Usuario {

	transient springSecurityService

	String nombre
	String apellido
	String dni
	String username
	String password
	String email
	
	String authority
	
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	static hasMany = [cursosUsuario:CursoUsuario, temasForo:TemaForo, comentarios:Comentario, actividades:Actividad]

	static transients = ['springSecurityService']

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
	
	String getRol () {
		UsuarioRol.findByUsuario(this).collect { this.authority = it.rol.authority }
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
