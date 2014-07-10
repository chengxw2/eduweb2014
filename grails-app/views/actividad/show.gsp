
<%@ page import="ar.edu.unlam.eduweb.Actividad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'actividad.label', default: 'Actividad')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-actividad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-actividad" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list actividad">
			
				<g:if test="${actividadInstance?.consigna}">
				<li class="fieldcontain">
					<span id="consigna-label" class="property-label"><g:message code="actividad.consigna.label" default="Consigna" /></span>
					
						<span class="property-value" aria-labelledby="consigna-label"><g:fieldValue bean="${actividadInstance}" field="consigna"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${actividadInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="actividad.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:link controller="estadoActividad" action="show" id="${actividadInstance?.estado?.id}">${actividadInstance?.estado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${actividadInstance?.fechaEntrega}">
				<li class="fieldcontain">
					<span id="fechaEntrega-label" class="property-label"><g:message code="actividad.fechaEntrega.label" default="Fecha Entrega" /></span>
					
						<span class="property-value" aria-labelledby="fechaEntrega-label"><g:formatDate date="${actividadInstance?.fechaEntrega}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${actividadInstance?.fechaInicio}">
				<li class="fieldcontain">
					<span id="fechaInicio-label" class="property-label"><g:message code="actividad.fechaInicio.label" default="Fecha Inicio" /></span>
					
						<span class="property-value" aria-labelledby="fechaInicio-label"><g:formatDate date="${actividadInstance?.fechaInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${actividadInstance?.nota}">
				<li class="fieldcontain">
					<span id="nota-label" class="property-label"><g:message code="actividad.nota.label" default="Nota" /></span>
					
						<span class="property-value" aria-labelledby="nota-label"><g:link controller="nota" action="show" id="${actividadInstance?.nota?.id}">${actividadInstance?.nota?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${actividadInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="actividad.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${actividadInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:actividadInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${actividadInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
