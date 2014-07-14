import ar.edu.unlam.eduweb.Usuario
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eduweb2014_usuario_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/usuario/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: usuarioInstance, field: 'username', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("usuario.username.label"),'default':("Username")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("username"),'required':(""),'value':(usuarioInstance?.username)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: usuarioInstance, field: 'password', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("usuario.password.label"),'default':("Password")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("password"),'required':(""),'value':(usuarioInstance?.password)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: usuarioInstance, field: 'accountExpired', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("usuario.accountExpired.label"),'default':("Account Expired")],-1)
printHtmlPart(6)
invokeTag('checkBox','g',28,['name':("accountExpired"),'value':(usuarioInstance?.accountExpired)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: usuarioInstance, field: 'accountLocked', 'error'))
printHtmlPart(7)
invokeTag('message','g',34,['code':("usuario.accountLocked.label"),'default':("Account Locked")],-1)
printHtmlPart(6)
invokeTag('checkBox','g',37,['name':("accountLocked"),'value':(usuarioInstance?.accountLocked)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: usuarioInstance, field: 'cursousuarios', 'error'))
printHtmlPart(8)
invokeTag('message','g',43,['code':("usuario.cursousuarios.label"),'default':("Cursousuarios")],-1)
printHtmlPart(9)
for( c in (usuarioInstance?.cursousuarios) ) {
printHtmlPart(10)
createTagBody(2, {->
expressionOut.print(c?.encodeAsHTML())
})
invokeTag('link','g',49,['controller':("cursoUsuario"),'action':("show"),'id':(c.id)],2)
printHtmlPart(11)
}
printHtmlPart(12)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'cursoUsuario.label', default: 'CursoUsuario')]))
})
invokeTag('link','g',52,['controller':("cursoUsuario"),'action':("create"),'params':(['usuario.id': usuarioInstance?.id])],1)
printHtmlPart(13)
expressionOut.print(hasErrors(bean: usuarioInstance, field: 'enabled', 'error'))
printHtmlPart(14)
invokeTag('message','g',61,['code':("usuario.enabled.label"),'default':("Enabled")],-1)
printHtmlPart(6)
invokeTag('checkBox','g',64,['name':("enabled"),'value':(usuarioInstance?.enabled)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: usuarioInstance, field: 'passwordExpired', 'error'))
printHtmlPart(15)
invokeTag('message','g',70,['code':("usuario.passwordExpired.label"),'default':("Password Expired")],-1)
printHtmlPart(6)
invokeTag('checkBox','g',73,['name':("passwordExpired"),'value':(usuarioInstance?.passwordExpired)],-1)
printHtmlPart(16)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1405119203104L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
