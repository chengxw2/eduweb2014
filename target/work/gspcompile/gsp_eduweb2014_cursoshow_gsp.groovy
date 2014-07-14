import ar.edu.unlam.eduweb.Curso
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eduweb2014_cursoshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/curso/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'curso.label', default: 'Curso'))],-1)
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
invokeTag('captureHead','sitemesh',130,[:],1)
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(5)
invokeTag('message','g',132,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(6)
expressionOut.print(createLink(controller:'curso', action: 'index', params:[usuario: 'lucas']))
printHtmlPart(7)
expressionOut.print(resource(dir: 'images', file: 'chicos2.png'))
printHtmlPart(8)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(9)
invokeTag('message','g',141,['code':("default.home.label")],-1)
printHtmlPart(10)
invokeTag('message','g',145,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(11)
if(true && (flash.message)) {
printHtmlPart(12)
expressionOut.print(flash.message)
printHtmlPart(13)
}
printHtmlPart(14)
if(true && (cursoInstance?.actividades)) {
printHtmlPart(15)
invokeTag('message','g',153,['code':("curso.actividades.label"),'default':("Actividades")],-1)
printHtmlPart(16)
for( a in (cursoInstance.actividades) ) {
printHtmlPart(17)
createTagBody(4, {->
expressionOut.print(a?.encodeAsHTML())
})
invokeTag('link','g',156,['controller':("actividad"),'action':("show"),'id':(a.id)],4)
printHtmlPart(18)
}
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (cursoInstance?.cursousuarios)) {
printHtmlPart(21)
invokeTag('message','g',164,['code':("curso.cursousuarios.label"),'default':("Cursousuarios")],-1)
printHtmlPart(16)
for( c in (cursoInstance.cursousuarios) ) {
printHtmlPart(22)
createTagBody(4, {->
expressionOut.print(c?.encodeAsHTML())
})
invokeTag('link','g',167,['controller':("cursoUsuario"),'action':("show"),'id':(c.id)],4)
printHtmlPart(18)
}
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (cursoInstance?.eventos)) {
printHtmlPart(23)
invokeTag('message','g',175,['code':("curso.eventos.label"),'default':("Eventos")],-1)
printHtmlPart(16)
for( e in (cursoInstance.eventos) ) {
printHtmlPart(24)
createTagBody(4, {->
expressionOut.print(e?.encodeAsHTML())
})
invokeTag('link','g',178,['controller':("evento"),'action':("show"),'id':(e.id)],4)
printHtmlPart(18)
}
printHtmlPart(19)
}
printHtmlPart(20)
if(true && (cursoInstance?.nombre)) {
printHtmlPart(25)
invokeTag('message','g',186,['code':("curso.nombre.label"),'default':("Nombre")],-1)
printHtmlPart(26)
invokeTag('fieldValue','g',188,['bean':(cursoInstance),'field':("nombre")],-1)
printHtmlPart(27)
}
printHtmlPart(20)
if(true && (cursoInstance?.temasforo)) {
printHtmlPart(28)
invokeTag('message','g',195,['code':("curso.temasforo.label"),'default':("Temasforo")],-1)
printHtmlPart(16)
for( t in (cursoInstance.temasforo) ) {
printHtmlPart(29)
createTagBody(4, {->
expressionOut.print(t?.encodeAsHTML())
})
invokeTag('link','g',198,['controller':("temaForo"),'action':("show"),'id':(t.id)],4)
printHtmlPart(18)
}
printHtmlPart(19)
}
printHtmlPart(30)
})
invokeTag('captureBody','sitemesh',206,[:],1)
printHtmlPart(31)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1405359403811L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
