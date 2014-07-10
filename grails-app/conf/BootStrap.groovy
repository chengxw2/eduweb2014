import ar.edu.unlam.eduweb.*

class BootStrap {

    def init = { servletContext ->
		def alumnoRole = new Rol(authority: 'ROLE_ALUMNO').save(flush: true)
		def profesorRole = new Rol(authority: 'ROLE_PROFESOR').save(flush: true)
	
		
		def testUser1 = new Usuario(username: 'natalia', password: 'tocci')
		def testUser2 = new Usuario(username: 'lucas', password: 'videla')
		
		testUser1.save(flush: true)
		testUser2.save(flush: true)
		
		UsuarioRol.create testUser2, profesorRole, true
		UsuarioRol.create testUser1, alumnoRole, true
		
		assert Usuario.count() == 2
		assert Rol.count() == 2
		assert UsuarioRol.count() == 2
    }
    def destroy = {
    }
}
