
<%@ page import="ar.edu.unlam.eduweb.Evaluacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evaluacion.label', default: 'Evaluacion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-evaluacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-evaluacion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list evaluacion">
			
				<g:if test="${evaluacionInstance?.consigna}">
				<li class="fieldcontain">
					<span id="consigna-label" class="property-label"><g:message code="evaluacion.consigna.label" default="Consigna" /></span>
					
						<span class="property-value" aria-labelledby="consigna-label"><g:fieldValue bean="${evaluacionInstance}" field="consigna"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${evaluacionInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="evaluacion.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:link controller="estadoActividad" action="show" id="${evaluacionInstance?.estado?.id}">${evaluacionInstance?.estado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${evaluacionInstance?.fechaEntrega}">
				<li class="fieldcontain">
					<span id="fechaEntrega-label" class="property-label"><g:message code="evaluacion.fechaEntrega.label" default="Fecha Entrega" /></span>
					
						<span class="property-value" aria-labelledby="fechaEntrega-label"><g:formatDate date="${evaluacionInstance?.fechaEntrega}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${evaluacionInstance?.fechaInicio}">
				<li class="fieldcontain">
					<span id="fechaInicio-label" class="property-label"><g:message code="evaluacion.fechaInicio.label" default="Fecha Inicio" /></span>
					
						<span class="property-value" aria-labelledby="fechaInicio-label"><g:formatDate date="${evaluacionInstance?.fechaInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${evaluacionInstance?.nota}">
				<li class="fieldcontain">
					<span id="nota-label" class="property-label"><g:message code="evaluacion.nota.label" default="Nota" /></span>
					
						<span class="property-value" aria-labelledby="nota-label"><g:link controller="nota" action="show" id="${evaluacionInstance?.nota?.id}">${evaluacionInstance?.nota?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${evaluacionInstance?.pregunta}">
				<li class="fieldcontain">
					<span id="pregunta-label" class="property-label"><g:message code="evaluacion.pregunta.label" default="Pregunta" /></span>
					
						<span class="property-value" aria-labelledby="pregunta-label"><g:fieldValue bean="${evaluacionInstance}" field="pregunta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${evaluacionInstance?.respuesta}">
				<li class="fieldcontain">
					<span id="respuesta-label" class="property-label"><g:message code="evaluacion.respuesta.label" default="Respuesta" /></span>
					
						<span class="property-value" aria-labelledby="respuesta-label"><g:fieldValue bean="${evaluacionInstance}" field="respuesta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${evaluacionInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="evaluacion.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${evaluacionInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:evaluacionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${evaluacionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
