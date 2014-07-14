import ar.edu.unlam.eduweb.Comentario
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eduweb2014_comentario_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/comentario/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: comentarioInstance, field: 'autorComentario', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("comentario.autorComentario.label"),'default':("Autor Comentario")],-1)
printHtmlPart(2)
invokeTag('select','g',10,['id':("autorComentario"),'name':("autorComentario.id"),'from':(ar.edu.unlam.eduweb.Usuario.list()),'optionKey':("id"),'required':(""),'value':(comentarioInstance?.autorComentario?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: comentarioInstance, field: 'fechaComentario', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("comentario.fechaComentario.label"),'default':("Fecha Comentario")],-1)
printHtmlPart(2)
invokeTag('datePicker','g',19,['name':("fechaComentario"),'precision':("day"),'value':(comentarioInstance?.fechaComentario)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: comentarioInstance, field: 'mensajeComentario', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("comentario.mensajeComentario.label"),'default':("Mensaje Comentario")],-1)
printHtmlPart(6)
invokeTag('textField','g',28,['name':("mensajeComentario"),'value':(comentarioInstance?.mensajeComentario)],-1)
printHtmlPart(7)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1405048904534L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
