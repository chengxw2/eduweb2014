package ar.edu.unlam.eduweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ActividadController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Actividad.list(params), model:[actividadInstanceCount: Actividad.count()]
    }

    def show(Actividad actividadInstance) {
        respond actividadInstance
    }

    def create() {
        respond new Actividad(params)
    }

    @Transactional
    def save(Actividad actividadInstance) {
        if (actividadInstance == null) {
            notFound()
            return
        }

        if (actividadInstance.hasErrors()) {
            respond actividadInstance.errors, view:'create'
            return
        }

        actividadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'actividadInstance.label', default: 'Actividad'), actividadInstance.id])
                redirect actividadInstance
            }
            '*' { respond actividadInstance, [status: CREATED] }
        }
    }

    def edit(Actividad actividadInstance) {
        respond actividadInstance
    }

    @Transactional
    def update(Actividad actividadInstance) {
        if (actividadInstance == null) {
            notFound()
            return
        }

        if (actividadInstance.hasErrors()) {
            respond actividadInstance.errors, view:'edit'
            return
        }

        actividadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Actividad.label', default: 'Actividad'), actividadInstance.id])
                redirect actividadInstance
            }
            '*'{ respond actividadInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Actividad actividadInstance) {

        if (actividadInstance == null) {
            notFound()
            return
        }

        actividadInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Actividad.label', default: 'Actividad'), actividadInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'actividadInstance.label', default: 'Actividad'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
