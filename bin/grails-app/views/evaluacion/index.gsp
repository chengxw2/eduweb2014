
<%@ page import="ar.edu.unlam.eduweb.Evaluacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evaluacion.label', default: 'Evaluacion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-evaluacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-evaluacion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="consigna" title="${message(code: 'evaluacion.consigna.label', default: 'Consigna')}" />
					
						<th><g:message code="evaluacion.estado.label" default="Estado" /></th>
					
						<g:sortableColumn property="fechaEntrega" title="${message(code: 'evaluacion.fechaEntrega.label', default: 'Fecha Entrega')}" />
					
						<g:sortableColumn property="fechaInicio" title="${message(code: 'evaluacion.fechaInicio.label', default: 'Fecha Inicio')}" />
					
						<th><g:message code="evaluacion.nota.label" default="Nota" /></th>
					
						<g:sortableColumn property="pregunta" title="${message(code: 'evaluacion.pregunta.label', default: 'Pregunta')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${evaluacionInstanceList}" status="i" var="evaluacionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${evaluacionInstance.id}">${fieldValue(bean: evaluacionInstance, field: "consigna")}</g:link></td>
					
						<td>${fieldValue(bean: evaluacionInstance, field: "estado")}</td>
					
						<td><g:formatDate date="${evaluacionInstance.fechaEntrega}" /></td>
					
						<td><g:formatDate date="${evaluacionInstance.fechaInicio}" /></td>
					
						<td>${fieldValue(bean: evaluacionInstance, field: "nota")}</td>
					
						<td>${fieldValue(bean: evaluacionInstance, field: "pregunta")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${evaluacionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
