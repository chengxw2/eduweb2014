package ar.edu.unlam.eduweb

import ar.edu.unlam.eduweb.CursoService

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['ROLE_ALUMNO'])
@Transactional(readOnly = true)
class CursoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def cursoService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
		
		def cursosDelUsuario = cursoService.cursosDeUsuario(getAuthenticatedUser())
		respond cursosDelUsuario, model:[cursoUsuarioInstanceCount: CursoUsuario.count(),
			 nuevoUser:cursosDelUsuario]
    }
	
	def curso(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		
		def cursosDelUsuario = cursoService.cursosDeUsuario(getAuthenticatedUser())
		respond cursosDelUsuario, model:[cursoUsuarioInstanceCount: CursoUsuario.count(),
			 nuevoUser:cursosDelUsuario]
	}
	

    def show(Curso cursoInstance) {
		   respond cursoInstance, model:[
			profe: cursoService.profesorDeCurso(cursoInstance)]
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
