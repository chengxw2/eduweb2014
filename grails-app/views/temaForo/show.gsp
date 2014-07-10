
<%@ page import="ar.edu.unlam.eduweb.TemaForo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'temaForo.label', default: 'TemaForo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-temaForo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-temaForo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list temaForo">
			
				<g:if test="${temaForoInstance?.autorTema}">
				<li class="fieldcontain">
					<span id="autorTema-label" class="property-label"><g:message code="temaForo.autorTema.label" default="Autor Tema" /></span>
					
						<span class="property-value" aria-labelledby="autorTema-label"><g:link controller="usuario" action="show" id="${temaForoInstance?.autorTema?.id}">${temaForoInstance?.autorTema?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${temaForoInstance?.categoriaForo}">
				<li class="fieldcontain">
					<span id="categoriaForo-label" class="property-label"><g:message code="temaForo.categoriaForo.label" default="Categoria Foro" /></span>
					
						<span class="property-value" aria-labelledby="categoriaForo-label"><g:link controller="categoriaTema" action="show" id="${temaForoInstance?.categoriaForo?.id}">${temaForoInstance?.categoriaForo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${temaForoInstance?.comentarios}">
				<li class="fieldcontain">
					<span id="comentarios-label" class="property-label"><g:message code="temaForo.comentarios.label" default="Comentarios" /></span>
					
						<g:each in="${temaForoInstance.comentarios}" var="c">
						<span class="property-value" aria-labelledby="comentarios-label"><g:link controller="comentario" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${temaForoInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="temaForo.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${temaForoInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${temaForoInstance?.mensaje}">
				<li class="fieldcontain">
					<span id="mensaje-label" class="property-label"><g:message code="temaForo.mensaje.label" default="Mensaje" /></span>
					
						<span class="property-value" aria-labelledby="mensaje-label"><g:fieldValue bean="${temaForoInstance}" field="mensaje"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${temaForoInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="temaForo.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${temaForoInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:temaForoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${temaForoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
