package ar.edu.unlam.eduweb



import grails.test.mixin.*
import spock.lang.*

@TestFor(EstadoActividadController)
@Mock(EstadoActividad)
class EstadoActividadControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.estadoActividadInstanceList
            model.estadoActividadInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.estadoActividadInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def estadoActividad = new EstadoActividad()
            estadoActividad.validate()
            controller.save(estadoActividad)

        then:"The create view is rendered again with the correct model"
            model.estadoActividadInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            estadoActividad = new EstadoActividad(params)

            controller.save(estadoActividad)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/estadoActividad/show/1'
            controller.flash.message != null
            EstadoActividad.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def estadoActividad = new EstadoActividad(params)
            controller.show(estadoActividad)

        then:"A model is populated containing the domain instance"
            model.estadoActividadInstance == estadoActividad
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def estadoActividad = new EstadoActividad(params)
            controller.edit(estadoActividad)

        then:"A model is populated containing the domain instance"
            model.estadoActividadInstance == estadoActividad
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/estadoActividad/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def estadoActividad = new EstadoActividad()
            estadoActividad.validate()
            controller.update(estadoActividad)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.estadoActividadInstance == estadoActividad

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            estadoActividad = new EstadoActividad(params).save(flush: true)
            controller.update(estadoActividad)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/estadoActividad/show/$estadoActividad.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/estadoActividad/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def estadoActividad = new EstadoActividad(params).save(flush: true)

        then:"It exists"
            EstadoActividad.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(estadoActividad)

        then:"The instance is deleted"
            EstadoActividad.count() == 0
            response.redirectedUrl == '/estadoActividad/index'
            flash.message != null
    }
}
