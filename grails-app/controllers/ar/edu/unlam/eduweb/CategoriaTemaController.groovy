package ar.edu.unlam.eduweb



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CategoriaTemaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CategoriaTema.list(params), model:[categoriaTemaInstanceCount: CategoriaTema.count()]
    }

    def show(CategoriaTema categoriaTemaInstance) {
        respond categoriaTemaInstance
    }

    def create() {
        respond new CategoriaTema(params)
    }

    @Transactional
    def save(CategoriaTema categoriaTemaInstance) {
        if (categoriaTemaInstance == null) {
            notFound()
            return
        }

        if (categoriaTemaInstance.hasErrors()) {
            respond categoriaTemaInstance.errors, view:'create'
            return
        }

        categoriaTemaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'categoriaTemaInstance.label', default: 'CategoriaTema'), categoriaTemaInstance.id])
                redirect categoriaTemaInstance
            }
            '*' { respond categoriaTemaInstance, [status: CREATED] }
        }
    }

    def edit(CategoriaTema categoriaTemaInstance) {
        respond categoriaTemaInstance
    }

    @Transactional
    def update(CategoriaTema categoriaTemaInstance) {
        if (categoriaTemaInstance == null) {
            notFound()
            return
        }

        if (categoriaTemaInstance.hasErrors()) {
            respond categoriaTemaInstance.errors, view:'edit'
            return
        }

        categoriaTemaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CategoriaTema.label', default: 'CategoriaTema'), categoriaTemaInstance.id])
                redirect categoriaTemaInstance
            }
            '*'{ respond categoriaTemaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CategoriaTema categoriaTemaInstance) {

        if (categoriaTemaInstance == null) {
            notFound()
            return
        }

        categoriaTemaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CategoriaTema.label', default: 'CategoriaTema'), categoriaTemaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'categoriaTemaInstance.label', default: 'CategoriaTema'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
