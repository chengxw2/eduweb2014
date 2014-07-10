package ar.edu.unlam.eduweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EstadoActividadController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EstadoActividad.list(params), model:[estadoActividadInstanceCount: EstadoActividad.count()]
    }

    def show(EstadoActividad estadoActividadInstance) {
        respond estadoActividadInstance
    }

    def create() {
        respond new EstadoActividad(params)
    }

    @Transactional
    def save(EstadoActividad estadoActividadInstance) {
        if (estadoActividadInstance == null) {
            notFound()
            return
        }

        if (estadoActividadInstance.hasErrors()) {
            respond estadoActividadInstance.errors, view:'create'
            return
        }

        estadoActividadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'estadoActividadInstance.label', default: 'EstadoActividad'), estadoActividadInstance.id])
                redirect estadoActividadInstance
            }
            '*' { respond estadoActividadInstance, [status: CREATED] }
        }
    }

    def edit(EstadoActividad estadoActividadInstance) {
        respond estadoActividadInstance
    }

    @Transactional
    def update(EstadoActividad estadoActividadInstance) {
        if (estadoActividadInstance == null) {
            notFound()
            return
        }

        if (estadoActividadInstance.hasErrors()) {
            respond estadoActividadInstance.errors, view:'edit'
            return
        }

        estadoActividadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EstadoActividad.label', default: 'EstadoActividad'), estadoActividadInstance.id])
                redirect estadoActividadInstance
            }
            '*'{ respond estadoActividadInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EstadoActividad estadoActividadInstance) {

        if (estadoActividadInstance == null) {
            notFound()
            return
        }

        estadoActividadInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EstadoActividad.label', default: 'EstadoActividad'), estadoActividadInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'estadoActividadInstance.label', default: 'EstadoActividad'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
