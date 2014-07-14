import ar.edu.unlam.eduweb.*

class BootStrap {

    def init = { servletContext ->
		def alumnoRole = new Rol(authority: 'ROLE_ALUMNO')
		def profesorRole = new Rol(authority: 'ROLE_PROFESOR')
		
		alumnoRole.save(flush: true)
		profesorRole.save(flush: true)
		
		def testUser1 = new Usuario(username: 'natalia', password: 'tocci', nombre: 'Natalia', apellido: 'Tocci', dni: '11222333', email: 'asd@asd.com')
		def testUser2 = new Usuario(username: 'lucas', password: 'videla', nombre: 'Lucas', apellido: 'Videla', dni: '11222333', email: 'asd@asd.com')
		def testUser3 = new Usuario(username: 'damian', password: 'berruezo', nombre: 'Damian', apellido: 'Berruezo', dni: '11222333', email: 'asd@asd.com')
		
		testUser1.save(flush: true)
		testUser2.save(flush: true)
		testUser3.save(flush: true)
		
		UsuarioRol.create(testUser2, profesorRole, true)
		UsuarioRol.create(testUser1, alumnoRole, true)
		UsuarioRol.create(testUser3, alumnoRole, true)
		
		assert Usuario.count() == 3
		assert Rol.count() == 2
		assert UsuarioRol.count() == 3
		
			
    }
    def destroy = {
    }
}
