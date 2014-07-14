import ar.edu.unlam.eduweb.Curso
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eduweb2014_curso_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/curso/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: cursoInstance, field: 'actividades', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("curso.actividades.label"),'default':("Actividades")],-1)
printHtmlPart(2)
invokeTag('select','g',10,['name':("actividades"),'from':(ar.edu.unlam.eduweb.Actividad.list()),'multiple':("multiple"),'optionKey':("id"),'size':("5"),'value':(cursoInstance?.actividades*.id),'class':("many-to-many")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: cursoInstance, field: 'cursousuarios', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("curso.cursousuarios.label"),'default':("Cursousuarios")],-1)
printHtmlPart(5)
for( c in (cursoInstance?.cursousuarios) ) {
printHtmlPart(6)
createTagBody(2, {->
expressionOut.print(c?.encodeAsHTML())
})
invokeTag('link','g',22,['controller':("cursoUsuario"),'action':("show"),'id':(c.id)],2)
printHtmlPart(7)
}
printHtmlPart(8)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'cursoUsuario.label', default: 'CursoUsuario')]))
})
invokeTag('link','g',25,['controller':("cursoUsuario"),'action':("create"),'params':(['curso.id': cursoInstance?.id])],1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: cursoInstance, field: 'eventos', 'error'))
printHtmlPart(10)
invokeTag('message','g',34,['code':("curso.eventos.label"),'default':("Eventos")],-1)
printHtmlPart(2)
invokeTag('select','g',37,['name':("eventos"),'from':(ar.edu.unlam.eduweb.Evento.list()),'multiple':("multiple"),'optionKey':("id"),'size':("5"),'value':(cursoInstance?.eventos*.id),'class':("many-to-many")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: cursoInstance, field: 'nombre', 'error'))
printHtmlPart(11)
invokeTag('message','g',43,['code':("curso.nombre.label"),'default':("Nombre")],-1)
printHtmlPart(2)
invokeTag('textField','g',46,['name':("nombre"),'value':(cursoInstance?.nombre)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: cursoInstance, field: 'temasforo', 'error'))
printHtmlPart(12)
invokeTag('message','g',52,['code':("curso.temasforo.label"),'default':("Temasforo")],-1)
printHtmlPart(2)
invokeTag('select','g',55,['name':("temasforo"),'from':(ar.edu.unlam.eduweb.TemaForo.list()),'multiple':("multiple"),'optionKey':("id"),'size':("5"),'value':(cursoInstance?.temasforo*.id),'class':("many-to-many")],-1)
printHtmlPart(13)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1405048904537L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
