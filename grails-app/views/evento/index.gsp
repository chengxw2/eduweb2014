
<%@ page import="ar.edu.unlam.eduweb.Evento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-evento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-evento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descripcionEvento" title="${message(code: 'evento.descripcionEvento.label', default: 'Descripcion Evento')}" />
					
						<g:sortableColumn property="fechaHoraFin" title="${message(code: 'evento.fechaHoraFin.label', default: 'Fecha Hora Fin')}" />
					
						<g:sortableColumn property="fechaHoraInicio" title="${message(code: 'evento.fechaHoraInicio.label', default: 'Fecha Hora Inicio')}" />
					
						<g:sortableColumn property="tituloEvento" title="${message(code: 'evento.tituloEvento.label', default: 'Titulo Evento')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventoInstanceList}" status="i" var="eventoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventoInstance.id}">${fieldValue(bean: eventoInstance, field: "descripcionEvento")}</g:link></td>
					
						<td><g:formatDate date="${eventoInstance.fechaHoraFin}" /></td>
					
						<td><g:formatDate date="${eventoInstance.fechaHoraInicio}" /></td>
					
						<td>${fieldValue(bean: eventoInstance, field: "tituloEvento")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${eventoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
