package ar.edu.unlam.eduweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TrabajoPracticoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TrabajoPractico.list(params), model:[trabajoPracticoInstanceCount: TrabajoPractico.count()]
    }

    def show(TrabajoPractico trabajoPracticoInstance) {
        respond trabajoPracticoInstance
    }

    def create() {
        respond new TrabajoPractico(params)
    }

    @Transactional
    def save(TrabajoPractico trabajoPracticoInstance) {
        if (trabajoPracticoInstance == null) {
            notFound()
            return
        }

        if (trabajoPracticoInstance.hasErrors()) {
            respond trabajoPracticoInstance.errors, view:'create'
            return
        }

        trabajoPracticoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'trabajoPracticoInstance.label', default: 'TrabajoPractico'), trabajoPracticoInstance.id])
                redirect trabajoPracticoInstance
            }
            '*' { respond trabajoPracticoInstance, [status: CREATED] }
        }
    }

    def edit(TrabajoPractico trabajoPracticoInstance) {
        respond trabajoPracticoInstance
    }

    @Transactional
    def update(TrabajoPractico trabajoPracticoInstance) {
        if (trabajoPracticoInstance == null) {
            notFound()
            return
        }

        if (trabajoPracticoInstance.hasErrors()) {
            respond trabajoPracticoInstance.errors, view:'edit'
            return
        }

        trabajoPracticoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TrabajoPractico.label', default: 'TrabajoPractico'), trabajoPracticoInstance.id])
                redirect trabajoPracticoInstance
            }
            '*'{ respond trabajoPracticoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TrabajoPractico trabajoPracticoInstance) {

        if (trabajoPracticoInstance == null) {
            notFound()
            return
        }

        trabajoPracticoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TrabajoPractico.label', default: 'TrabajoPractico'), trabajoPracticoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'trabajoPracticoInstance.label', default: 'TrabajoPractico'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
