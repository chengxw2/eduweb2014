package ar.edu.unlam.eduweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CursoUsuarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CursoUsuario.list(params), model:[cursoUsuarioInstanceCount: CursoUsuario.count()]
    }

    def show(CursoUsuario cursoUsuarioInstance) {
        respond cursoUsuarioInstance
    }

    def create() {
        respond new CursoUsuario(params)
    }

    @Transactional
    def save(CursoUsuario cursoUsuarioInstance) {
        if (cursoUsuarioInstance == null) {
            notFound()
            return
        }

        if (cursoUsuarioInstance.hasErrors()) {
            respond cursoUsuarioInstance.errors, view:'create'
            return
        }

        cursoUsuarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cursoUsuarioInstance.label', default: 'CursoUsuario'), cursoUsuarioInstance.id])
                redirect cursoUsuarioInstance
            }
            '*' { respond cursoUsuarioInstance, [status: CREATED] }
        }
    }

    def edit(CursoUsuario cursoUsuarioInstance) {
        respond cursoUsuarioInstance
    }

    @Transactional
    def update(CursoUsuario cursoUsuarioInstance) {
        if (cursoUsuarioInstance == null) {
            notFound()
            return
        }

        if (cursoUsuarioInstance.hasErrors()) {
            respond cursoUsuarioInstance.errors, view:'edit'
            return
        }

        cursoUsuarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CursoUsuario.label', default: 'CursoUsuario'), cursoUsuarioInstance.id])
                redirect cursoUsuarioInstance
            }
            '*'{ respond cursoUsuarioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CursoUsuario cursoUsuarioInstance) {

        if (cursoUsuarioInstance == null) {
            notFound()
            return
        }

        cursoUsuarioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CursoUsuario.label', default: 'CursoUsuario'), cursoUsuarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cursoUsuarioInstance.label', default: 'CursoUsuario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
