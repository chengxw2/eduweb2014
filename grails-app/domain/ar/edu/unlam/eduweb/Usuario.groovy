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
		rol bindable: true
	} 

	static mapping = {
		password column: '`password`'
	}

	Set<Rol> getAuthorities() {
		UsuarioRol.findAllByUsuario(this).collect { it.rol }
	}
	
	Set<Rol> getRol () {
		UsuarioRol.findByUsuario(this).collect { it.rol }
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
