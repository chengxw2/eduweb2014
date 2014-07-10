package ar.edu.unlam.eduweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EvaluacionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Evaluacion.list(params), model:[evaluacionInstanceCount: Evaluacion.count()]
    }

    def show(Evaluacion evaluacionInstance) {
        respond evaluacionInstance
    }

    def create() {
        respond new Evaluacion(params)
    }

    @Transactional
    def save(Evaluacion evaluacionInstance) {
        if (evaluacionInstance == null) {
            notFound()
            return
        }

        if (evaluacionInstance.hasErrors()) {
            respond evaluacionInstance.errors, view:'create'
            return
        }

        evaluacionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'evaluacionInstance.label', default: 'Evaluacion'), evaluacionInstance.id])
                redirect evaluacionInstance
            }
            '*' { respond evaluacionInstance, [status: CREATED] }
        }
    }

    def edit(Evaluacion evaluacionInstance) {
        respond evaluacionInstance
    }

    @Transactional
    def update(Evaluacion evaluacionInstance) {
        if (evaluacionInstance == null) {
            notFound()
            return
        }

        if (evaluacionInstance.hasErrors()) {
            respond evaluacionInstance.errors, view:'edit'
            return
        }

        evaluacionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Evaluacion.label', default: 'Evaluacion'), evaluacionInstance.id])
                redirect evaluacionInstance
            }
            '*'{ respond evaluacionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Evaluacion evaluacionInstance) {

        if (evaluacionInstance == null) {
            notFound()
            return
        }

        evaluacionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Evaluacion.label', default: 'Evaluacion'), evaluacionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'evaluacionInstance.label', default: 'Evaluacion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
