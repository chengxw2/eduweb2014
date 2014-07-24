
<%@ page import="ar.edu.unlam.eduweb.Actividad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'actividad.label', default: 'Actividad')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-actividad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-actividad" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="consigna" title="${message(code: 'actividad.consigna.label', default: 'Consigna')}" />
					
						<th><g:message code="actividad.estado.label" default="Estado" /></th>
					
						<g:sortableColumn property="fechaEntrega" title="${message(code: 'actividad.fechaEntrega.label', default: 'Fecha Entrega')}" />
					
						<g:sortableColumn property="fechaInicio" title="${message(code: 'actividad.fechaInicio.label', default: 'Fecha Inicio')}" />
					
						<th><g:message code="actividad.nota.label" default="Nota" /></th>
					
						<g:sortableColumn property="titulo" title="${message(code: 'actividad.titulo.label', default: 'Titulo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${actividadInstanceList}" status="i" var="actividadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${actividadInstance.id}">${fieldValue(bean: actividadInstance, field: "consigna")}</g:link></td>
					
						<td>${fieldValue(bean: actividadInstance, field: "estado")}</td>
					
						<td><g:formatDate date="${actividadInstance.fechaEntrega}" /></td>
					
						<td><g:formatDate date="${actividadInstance.fechaInicio}" /></td>
					
						<td>${fieldValue(bean: actividadInstance, field: "nota")}</td>
					
						<td>${fieldValue(bean: actividadInstance, field: "titulo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${actividadInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
