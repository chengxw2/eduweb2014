import ar.edu.unlam.eduweb.TemaForo
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eduweb2014_temaForoindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/temaForo/index.gsp" }
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
invokeTag('message','g',8,['code':("default.list.label"),'args':([entityName])],-1)
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
invokeTag('message','g',15,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("create"),'action':("create")],2)
printHtmlPart(8)
invokeTag('message','g',19,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(9)
if(true && (flash.message)) {
printHtmlPart(10)
expressionOut.print(flash.message)
printHtmlPart(11)
}
printHtmlPart(12)
invokeTag('message','g',27,['code':("temaForo.autorTema.label"),'default':("Autor Tema")],-1)
printHtmlPart(13)
invokeTag('message','g',29,['code':("temaForo.categoriaForo.label"),'default':("Categoria Foro")],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',31,['property':("fecha"),'title':(message(code: 'temaForo.fecha.label', default: 'Fecha'))],-1)
printHtmlPart(15)
invokeTag('sortableColumn','g',33,['property':("mensaje"),'title':(message(code: 'temaForo.mensaje.label', default: 'Mensaje'))],-1)
printHtmlPart(15)
invokeTag('sortableColumn','g',35,['property':("titulo"),'title':(message(code: 'temaForo.titulo.label', default: 'Titulo'))],-1)
printHtmlPart(16)
loop:{
int i = 0
for( temaForoInstance in (temaForoInstanceList) ) {
printHtmlPart(17)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(18)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: temaForoInstance, field: "autorTema"))
})
invokeTag('link','g',43,['action':("show"),'id':(temaForoInstance.id)],3)
printHtmlPart(19)
expressionOut.print(fieldValue(bean: temaForoInstance, field: "categoriaForo"))
printHtmlPart(19)
invokeTag('formatDate','g',47,['date':(temaForoInstance.fecha)],-1)
printHtmlPart(19)
expressionOut.print(fieldValue(bean: temaForoInstance, field: "mensaje"))
printHtmlPart(19)
expressionOut.print(fieldValue(bean: temaForoInstance, field: "titulo"))
printHtmlPart(20)
i++
}
}
printHtmlPart(21)
invokeTag('paginate','g',58,['total':(temaForoInstanceCount ?: 0)],-1)
printHtmlPart(22)
})
invokeTag('captureBody','sitemesh',61,[:],1)
printHtmlPart(23)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1405048904563L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
