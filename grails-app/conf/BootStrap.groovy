import ar.edu.unlam.eduweb.*

class BootStrap {

    def init = { servletContext ->
		def alumnoRole = new Rol(authority: 'ROLE_ALUMNO').save(flush: true)
		def profesorRole = new Rol(authority: 'ROLE_PROFESOR').save(flush: true)
	
		
		def testUser1 = new Usuario(username: 'natalia', password: 'tocci')
		def testUser2 = new Usuario(username: 'lucas', password: 'videla')
		def testUser3 = new Usuario(username: 'damian', password: 'berruezo')
		
		testUser1.save(flush: true)
		testUser2.save(flush: true)
		testUser3.save(flush: true)
		
		UsuarioRol.create testUser2, profesorRole, true
		UsuarioRol.create testUser1, alumnoRole, true
		UsuarioRol.create testUser3, alumnoRole, true
		

		
		assert Usuario.count() == 3
		assert Rol.count() == 2
		assert UsuarioRol.count() == 3
		
			
    }
    def destroy = {
    }
}
