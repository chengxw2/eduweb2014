
<%@ page import="ar.edu.unlam.eduweb.Comentario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comentario.label', default: 'Comentario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-comentario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-comentario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list comentario">
			
				<g:if test="${comentarioInstance?.autorComentario}">
				<li class="fieldcontain">
					<span id="autorComentario-label" class="property-label"><g:message code="comentario.autorComentario.label" default="Autor Comentario" /></span>
					
						<span class="property-value" aria-labelledby="autorComentario-label"><g:link controller="usuario" action="show" id="${comentarioInstance?.autorComentario?.id}">${comentarioInstance?.autorComentario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${comentarioInstance?.fechaComentario}">
				<li class="fieldcontain">
					<span id="fechaComentario-label" class="property-label"><g:message code="comentario.fechaComentario.label" default="Fecha Comentario" /></span>
					
						<span class="property-value" aria-labelledby="fechaComentario-label"><g:formatDate date="${comentarioInstance?.fechaComentario}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${comentarioInstance?.mensajeComentario}">
				<li class="fieldcontain">
					<span id="mensajeComentario-label" class="property-label"><g:message code="comentario.mensajeComentario.label" default="Mensaje Comentario" /></span>
					
						<span class="property-value" aria-labelledby="mensajeComentario-label"><g:fieldValue bean="${comentarioInstance}" field="mensajeComentario"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:comentarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${comentarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
