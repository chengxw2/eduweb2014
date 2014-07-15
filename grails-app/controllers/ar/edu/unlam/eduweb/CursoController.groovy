package ar.edu.unlam.eduweb


import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['ROLE_ALUMNO'])
@Transactional(readOnly = true)
class CursoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE", index: "GET"]
	
	

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
		
        respond CursoUsuario.findAllByUsuario(Usuario.findByUsername(getAuthenticatedUser().username)), model:[cursoUsuarioInstanceCount: CursoUsuario.count(),
			 nuevoUser: CursoUsuario.findAllByUsuario(Usuario.findByUsername(getAuthenticatedUser().username))]
    }
	
	

    def show(Curso cursoInstance) {
		//1. Buscamos el registro ROLE_PROFESOR
		def rolProfesor = Rol.findAllByAuthority('ROLE_PROFESOR')
		
		//2. Buscamos a todos los usuarios con ROLE_PROFESOR
		def listaProfesores = UsuarioRol.findAllByRol(rolProfesor)
		
		//3. Buscamos el objeto cursoUsuario que corresponda al Curso actual y que contenga un Profesor de la lista de profesores
		def cursoUsuario = CursoUsuario.findByCursoAndUsuarioInList(cursoInstance, listaProfesores.usuario)
		//def cursoUsuario = CursoUsuario.findAll("FROM CursoUsuario AS cu WHERE cu.curso = :curso AND cu.usuario IN :listaProfesores", [curso: cursoInstance, listaProfesores: listaProfesores.usuario])
		
		//4. Obtenemos los datos del usuario Profesor
		def profesor = Usuario.get(cursoUsuario.usuario.id)
		
        respond cursoInstance, model:[
			profe:profesor.nombre,
			rol:rolProfesor,
			usuarioRol: listaProfesores]
    }
	

    def create() {
        respond new Curso(params)
    }


    @Transactional
    def save(Curso cursoInstance) {
        if (cursoInstance == null) {
            notFound()
            return
        }

        if (cursoInstance.hasErrors()) {
            respond cursoInstance.errors, view:'create'
            return
        }

        cursoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cursoInstance.label', default: 'Curso'), cursoInstance.id])
                redirect cursoInstance
            }
            '*' { respond cursoInstance, [status: CREATED] }
        }
    }


    def edit(Curso cursoInstance) {
        respond cursoInstance
    }


    @Transactional
    def update(Curso cursoInstance) {
        if (cursoInstance == null) {
            notFound()
            return
        }

        if (cursoInstance.hasErrors()) {
            respond cursoInstance.errors, view:'edit'
            return
        }

        cursoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Curso.label', default: 'Curso'), cursoInstance.id])
                redirect cursoInstance
            }
            '*'{ respond cursoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Curso cursoInstance) {

        if (cursoInstance == null) {
            notFound()
            return
        }

        cursoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Curso.label', default: 'Curso'), cursoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cursoInstance.label', default: 'Curso'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
