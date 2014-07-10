
<%@ page import="ar.edu.unlam.eduweb.TrabajoPractico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trabajoPractico.label', default: 'TrabajoPractico')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-trabajoPractico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-trabajoPractico" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list trabajoPractico">
			
				<g:if test="${trabajoPracticoInstance?.archivo}">
				<li class="fieldcontain">
					<span id="archivo-label" class="property-label"><g:message code="trabajoPractico.archivo.label" default="Archivo" /></span>
					
						<span class="property-value" aria-labelledby="archivo-label"><g:fieldValue bean="${trabajoPracticoInstance}" field="archivo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoPracticoInstance?.consigna}">
				<li class="fieldcontain">
					<span id="consigna-label" class="property-label"><g:message code="trabajoPractico.consigna.label" default="Consigna" /></span>
					
						<span class="property-value" aria-labelledby="consigna-label"><g:fieldValue bean="${trabajoPracticoInstance}" field="consigna"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoPracticoInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="trabajoPractico.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:link controller="estadoActividad" action="show" id="${trabajoPracticoInstance?.estado?.id}">${trabajoPracticoInstance?.estado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoPracticoInstance?.fechaEntrega}">
				<li class="fieldcontain">
					<span id="fechaEntrega-label" class="property-label"><g:message code="trabajoPractico.fechaEntrega.label" default="Fecha Entrega" /></span>
					
						<span class="property-value" aria-labelledby="fechaEntrega-label"><g:formatDate date="${trabajoPracticoInstance?.fechaEntrega}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoPracticoInstance?.fechaInicio}">
				<li class="fieldcontain">
					<span id="fechaInicio-label" class="property-label"><g:message code="trabajoPractico.fechaInicio.label" default="Fecha Inicio" /></span>
					
						<span class="property-value" aria-labelledby="fechaInicio-label"><g:formatDate date="${trabajoPracticoInstance?.fechaInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoPracticoInstance?.mensajeTp}">
				<li class="fieldcontain">
					<span id="mensajeTp-label" class="property-label"><g:message code="trabajoPractico.mensajeTp.label" default="Mensaje Tp" /></span>
					
						<span class="property-value" aria-labelledby="mensajeTp-label"><g:fieldValue bean="${trabajoPracticoInstance}" field="mensajeTp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoPracticoInstance?.nota}">
				<li class="fieldcontain">
					<span id="nota-label" class="property-label"><g:message code="trabajoPractico.nota.label" default="Nota" /></span>
					
						<span class="property-value" aria-labelledby="nota-label"><g:link controller="nota" action="show" id="${trabajoPracticoInstance?.nota?.id}">${trabajoPracticoInstance?.nota?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoPracticoInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="trabajoPractico.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${trabajoPracticoInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:trabajoPracticoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${trabajoPracticoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
