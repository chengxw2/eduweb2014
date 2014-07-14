import ar.edu.unlam.eduweb.Evaluacion
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eduweb2014_evaluacion_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/evaluacion/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: evaluacionInstance, field: 'consigna', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("evaluacion.consigna.label"),'default':("Consigna")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("consigna"),'value':(evaluacionInstance?.consigna)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: evaluacionInstance, field: 'estado', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("evaluacion.estado.label"),'default':("Estado")],-1)
printHtmlPart(5)
invokeTag('select','g',19,['id':("estado"),'name':("estado.id"),'from':(ar.edu.unlam.eduweb.EstadoActividad.list()),'optionKey':("id"),'required':(""),'value':(evaluacionInstance?.estado?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: evaluacionInstance, field: 'fechaEntrega', 'error'))
printHtmlPart(6)
invokeTag('message','g',25,['code':("evaluacion.fechaEntrega.label"),'default':("Fecha Entrega")],-1)
printHtmlPart(5)
invokeTag('datePicker','g',28,['name':("fechaEntrega"),'precision':("day"),'value':(evaluacionInstance?.fechaEntrega)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: evaluacionInstance, field: 'fechaInicio', 'error'))
printHtmlPart(7)
invokeTag('message','g',34,['code':("evaluacion.fechaInicio.label"),'default':("Fecha Inicio")],-1)
printHtmlPart(5)
invokeTag('datePicker','g',37,['name':("fechaInicio"),'precision':("day"),'value':(evaluacionInstance?.fechaInicio)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: evaluacionInstance, field: 'nota', 'error'))
printHtmlPart(8)
invokeTag('message','g',43,['code':("evaluacion.nota.label"),'default':("Nota")],-1)
printHtmlPart(5)
invokeTag('select','g',46,['id':("nota"),'name':("nota.id"),'from':(ar.edu.unlam.eduweb.Nota.list()),'optionKey':("id"),'required':(""),'value':(evaluacionInstance?.nota?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: evaluacionInstance, field: 'pregunta', 'error'))
printHtmlPart(9)
invokeTag('message','g',52,['code':("evaluacion.pregunta.label"),'default':("Pregunta")],-1)
printHtmlPart(2)
invokeTag('textField','g',55,['name':("pregunta"),'value':(evaluacionInstance?.pregunta)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: evaluacionInstance, field: 'respuesta', 'error'))
printHtmlPart(10)
invokeTag('message','g',61,['code':("evaluacion.respuesta.label"),'default':("Respuesta")],-1)
printHtmlPart(2)
invokeTag('textField','g',64,['name':("respuesta"),'value':(evaluacionInstance?.respuesta)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: evaluacionInstance, field: 'titulo', 'error'))
printHtmlPart(11)
invokeTag('message','g',70,['code':("evaluacion.titulo.label"),'default':("Titulo")],-1)
printHtmlPart(2)
invokeTag('textField','g',73,['name':("titulo"),'value':(evaluacionInstance?.titulo)],-1)
printHtmlPart(12)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1405048904549L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
