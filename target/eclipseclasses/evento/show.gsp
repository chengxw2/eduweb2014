
<%@ page import="ar.edu.unlam.eduweb.Evento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-evento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-evento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list evento">
			
				<g:if test="${eventoInstance?.descripcionEvento}">
				<li class="fieldcontain">
					<span id="descripcionEvento-label" class="property-label"><g:message code="evento.descripcionEvento.label" default="Descripcion Evento" /></span>
					
						<span class="property-value" aria-labelledby="descripcionEvento-label"><g:fieldValue bean="${eventoInstance}" field="descripcionEvento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.fechaHoraFin}">
				<li class="fieldcontain">
					<span id="fechaHoraFin-label" class="property-label"><g:message code="evento.fechaHoraFin.label" default="Fecha Hora Fin" /></span>
					
						<span class="property-value" aria-labelledby="fechaHoraFin-label"><g:formatDate date="${eventoInstance?.fechaHoraFin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.fechaHoraInicio}">
				<li class="fieldcontain">
					<span id="fechaHoraInicio-label" class="property-label"><g:message code="evento.fechaHoraInicio.label" default="Fecha Hora Inicio" /></span>
					
						<span class="property-value" aria-labelledby="fechaHoraInicio-label"><g:formatDate date="${eventoInstance?.fechaHoraInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.tituloEvento}">
				<li class="fieldcontain">
					<span id="tituloEvento-label" class="property-label"><g:message code="evento.tituloEvento.label" default="Titulo Evento" /></span>
					
						<span class="property-value" aria-labelledby="tituloEvento-label"><g:fieldValue bean="${eventoInstance}" field="tituloEvento"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:eventoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${eventoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
