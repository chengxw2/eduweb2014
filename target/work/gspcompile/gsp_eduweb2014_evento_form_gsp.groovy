import ar.edu.unlam.eduweb.Evento
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eduweb2014_evento_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/evento/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: eventoInstance, field: 'descripcionEvento', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("evento.descripcionEvento.label"),'default':("Descripcion Evento")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("descripcionEvento"),'value':(eventoInstance?.descripcionEvento)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: eventoInstance, field: 'fechaHoraFin', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("evento.fechaHoraFin.label"),'default':("Fecha Hora Fin")],-1)
printHtmlPart(5)
invokeTag('datePicker','g',19,['name':("fechaHoraFin"),'precision':("day"),'value':(eventoInstance?.fechaHoraFin)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: eventoInstance, field: 'fechaHoraInicio', 'error'))
printHtmlPart(6)
invokeTag('message','g',25,['code':("evento.fechaHoraInicio.label"),'default':("Fecha Hora Inicio")],-1)
printHtmlPart(5)
invokeTag('datePicker','g',28,['name':("fechaHoraInicio"),'precision':("day"),'value':(eventoInstance?.fechaHoraInicio)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: eventoInstance, field: 'tituloEvento', 'error'))
printHtmlPart(7)
invokeTag('message','g',34,['code':("evento.tituloEvento.label"),'default':("Titulo Evento")],-1)
printHtmlPart(2)
invokeTag('textField','g',37,['name':("tituloEvento"),'value':(eventoInstance?.tituloEvento)],-1)
printHtmlPart(8)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1405048904552L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
