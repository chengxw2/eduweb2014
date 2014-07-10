package ar.edu.unlam.eduweb



import grails.test.mixin.*
import spock.lang.*

@TestFor(TemaForoController)
@Mock(TemaForo)
class TemaForoControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.temaForoInstanceList
            model.temaForoInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.temaForoInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def temaForo = new TemaForo()
            temaForo.validate()
            controller.save(temaForo)

        then:"The create view is rendered again with the correct model"
            model.temaForoInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            temaForo = new TemaForo(params)

            controller.save(temaForo)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/temaForo/show/1'
            controller.flash.message != null
            TemaForo.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def temaForo = new TemaForo(params)
            controller.show(temaForo)

        then:"A model is populated containing the domain instance"
            model.temaForoInstance == temaForo
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def temaForo = new TemaForo(params)
            controller.edit(temaForo)

        then:"A model is populated containing the domain instance"
            model.temaForoInstance == temaForo
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/temaForo/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def temaForo = new TemaForo()
            temaForo.validate()
            controller.update(temaForo)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.temaForoInstance == temaForo

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            temaForo = new TemaForo(params).save(flush: true)
            controller.update(temaForo)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/temaForo/show/$temaForo.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/temaForo/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def temaForo = new TemaForo(params).save(flush: true)

        then:"It exists"
            TemaForo.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(temaForo)

        then:"The instance is deleted"
            TemaForo.count() == 0
            response.redirectedUrl == '/temaForo/index'
            flash.message != null
    }
}
