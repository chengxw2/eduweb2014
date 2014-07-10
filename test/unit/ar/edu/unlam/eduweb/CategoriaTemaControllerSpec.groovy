package ar.edu.unlam.eduweb



import grails.test.mixin.*
import spock.lang.*

@TestFor(CategoriaTemaController)
@Mock(CategoriaTema)
class CategoriaTemaControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.categoriaTemaInstanceList
            model.categoriaTemaInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.categoriaTemaInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def categoriaTema = new CategoriaTema()
            categoriaTema.validate()
            controller.save(categoriaTema)

        then:"The create view is rendered again with the correct model"
            model.categoriaTemaInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            categoriaTema = new CategoriaTema(params)

            controller.save(categoriaTema)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/categoriaTema/show/1'
            controller.flash.message != null
            CategoriaTema.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def categoriaTema = new CategoriaTema(params)
            controller.show(categoriaTema)

        then:"A model is populated containing the domain instance"
            model.categoriaTemaInstance == categoriaTema
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def categoriaTema = new CategoriaTema(params)
            controller.edit(categoriaTema)

        then:"A model is populated containing the domain instance"
            model.categoriaTemaInstance == categoriaTema
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/categoriaTema/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def categoriaTema = new CategoriaTema()
            categoriaTema.validate()
            controller.update(categoriaTema)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.categoriaTemaInstance == categoriaTema

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            categoriaTema = new CategoriaTema(params).save(flush: true)
            controller.update(categoriaTema)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/categoriaTema/show/$categoriaTema.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/categoriaTema/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def categoriaTema = new CategoriaTema(params).save(flush: true)

        then:"It exists"
            CategoriaTema.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(categoriaTema)

        then:"The instance is deleted"
            CategoriaTema.count() == 0
            response.redirectedUrl == '/categoriaTema/index'
            flash.message != null
    }
}
