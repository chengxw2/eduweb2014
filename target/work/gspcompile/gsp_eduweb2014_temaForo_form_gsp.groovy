import ar.edu.unlam.eduweb.TemaForo
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eduweb2014_temaForo_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/temaForo/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: temaForoInstance, field: 'autorTema', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("temaForo.autorTema.label"),'default':("Autor Tema")],-1)
printHtmlPart(2)
invokeTag('select','g',10,['id':("autorTema"),'name':("autorTema.id"),'from':(ar.edu.unlam.eduweb.Usuario.list()),'optionKey':("id"),'required':(""),'value':(temaForoInstance?.autorTema?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: temaForoInstance, field: 'categoriaForo', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("temaForo.categoriaForo.label"),'default':("Categoria Foro")],-1)
printHtmlPart(2)
invokeTag('select','g',19,['id':("categoriaForo"),'name':("categoriaForo.id"),'from':(ar.edu.unlam.eduweb.CategoriaTema.list()),'optionKey':("id"),'required':(""),'value':(temaForoInstance?.categoriaForo?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: temaForoInstance, field: 'comentarios', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("temaForo.comentarios.label"),'default':("Comentarios")],-1)
printHtmlPart(6)
invokeTag('select','g',28,['name':("comentarios"),'from':(ar.edu.unlam.eduweb.Comentario.list()),'multiple':("multiple"),'optionKey':("id"),'size':("5"),'value':(temaForoInstance?.comentarios*.id),'class':("many-to-many")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: temaForoInstance, field: 'fecha', 'error'))
printHtmlPart(7)
invokeTag('message','g',34,['code':("temaForo.fecha.label"),'default':("Fecha")],-1)
printHtmlPart(2)
invokeTag('datePicker','g',37,['name':("fecha"),'precision':("day"),'value':(temaForoInstance?.fecha)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: temaForoInstance, field: 'mensaje', 'error'))
printHtmlPart(8)
invokeTag('message','g',43,['code':("temaForo.mensaje.label"),'default':("Mensaje")],-1)
printHtmlPart(6)
invokeTag('textField','g',46,['name':("mensaje"),'value':(temaForoInstance?.mensaje)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: temaForoInstance, field: 'titulo', 'error'))
printHtmlPart(9)
invokeTag('message','g',52,['code':("temaForo.titulo.label"),'default':("Titulo")],-1)
printHtmlPart(6)
invokeTag('textField','g',55,['name':("titulo"),'value':(temaForoInstance?.titulo)],-1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1405048904562L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
