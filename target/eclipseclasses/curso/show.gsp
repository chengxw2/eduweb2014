
<%@ page import="ar.edu.unlam.eduweb.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-curso" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list curso">
			
				<g:if test="${cursoInstance?.actividades}">
				<li class="fieldcontain">
					<span id="actividades-label" class="property-label"><g:message code="curso.actividades.label" default="Actividades" /></span>
					
						<g:each in="${cursoInstance.actividades}" var="a">
						<span class="property-value" aria-labelledby="actividades-label"><g:link controller="actividad" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.cursousuarios}">
				<li class="fieldcontain">
					<span id="cursousuarios-label" class="property-label"><g:message code="curso.cursousuarios.label" default="Cursousuarios" /></span>
					
						<g:each in="${cursoInstance.cursousuarios}" var="c">
						<span class="property-value" aria-labelledby="cursousuarios-label"><g:link controller="cursoUsuario" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.eventos}">
				<li class="fieldcontain">
					<span id="eventos-label" class="property-label"><g:message code="curso.eventos.label" default="Eventos" /></span>
					
						<g:each in="${cursoInstance.eventos}" var="e">
						<span class="property-value" aria-labelledby="eventos-label"><g:link controller="evento" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="curso.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${cursoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.temasforo}">
				<li class="fieldcontain">
					<span id="temasforo-label" class="property-label"><g:message code="curso.temasforo.label" default="Temasforo" /></span>
					
						<g:each in="${cursoInstance.temasforo}" var="t">
						<span class="property-value" aria-labelledby="temasforo-label"><g:link controller="temaForo" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:cursoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${cursoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
