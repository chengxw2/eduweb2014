import ar.edu.unlam.eduweb.TemaForo
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eduweb2014_temaForoshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/temaForo/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'temaForo.label', default: 'TemaForo'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',11,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(5)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(6)
invokeTag('message','g',14,['code':("default.home.label")],-1)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',15,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("list"),'action':("index")],2)
printHtmlPart(8)
createTagBody(2, {->
invokeTag('message','g',16,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',16,['class':("create"),'action':("create")],2)
printHtmlPart(9)
invokeTag('message','g',20,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(10)
if(true && (flash.message)) {
printHtmlPart(11)
expressionOut.print(flash.message)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (temaForoInstance?.autorTema)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("temaForo.autorTema.label"),'default':("Autor Tema")],-1)
printHtmlPart(15)
createTagBody(3, {->
expressionOut.print(temaForoInstance?.autorTema?.encodeAsHTML())
})
invokeTag('link','g',30,['controller':("usuario"),'action':("show"),'id':(temaForoInstance?.autorTema?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (temaForoInstance?.categoriaForo)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("temaForo.categoriaForo.label"),'default':("Categoria Foro")],-1)
printHtmlPart(19)
createTagBody(3, {->
expressionOut.print(temaForoInstance?.categoriaForo?.encodeAsHTML())
})
invokeTag('link','g',39,['controller':("categoriaTema"),'action':("show"),'id':(temaForoInstance?.categoriaForo?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (temaForoInstance?.comentarios)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("temaForo.comentarios.label"),'default':("Comentarios")],-1)
printHtmlPart(21)
for( c in (temaForoInstance.comentarios) ) {
printHtmlPart(22)
createTagBody(4, {->
expressionOut.print(c?.encodeAsHTML())
})
invokeTag('link','g',49,['controller':("comentario"),'action':("show"),'id':(c.id)],4)
printHtmlPart(23)
}
printHtmlPart(24)
}
printHtmlPart(17)
if(true && (temaForoInstance?.fecha)) {
printHtmlPart(25)
invokeTag('message','g',57,['code':("temaForo.fecha.label"),'default':("Fecha")],-1)
printHtmlPart(26)
invokeTag('formatDate','g',59,['date':(temaForoInstance?.fecha)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (temaForoInstance?.mensaje)) {
printHtmlPart(27)
invokeTag('message','g',66,['code':("temaForo.mensaje.label"),'default':("Mensaje")],-1)
printHtmlPart(28)
invokeTag('fieldValue','g',68,['bean':(temaForoInstance),'field':("mensaje")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (temaForoInstance?.titulo)) {
printHtmlPart(29)
invokeTag('message','g',75,['code':("temaForo.titulo.label"),'default':("Titulo")],-1)
printHtmlPart(30)
invokeTag('fieldValue','g',77,['bean':(temaForoInstance),'field':("titulo")],-1)
printHtmlPart(16)
}
printHtmlPart(31)
createTagBody(2, {->
printHtmlPart(32)
createTagBody(3, {->
invokeTag('message','g',85,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',85,['class':("edit"),'action':("edit"),'resource':(temaForoInstance)],3)
printHtmlPart(33)
invokeTag('actionSubmit','g',86,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(34)
})
invokeTag('form','g',88,['url':([resource:temaForoInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(35)
})
invokeTag('captureBody','sitemesh',90,[:],1)
printHtmlPart(36)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1405048904564L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
