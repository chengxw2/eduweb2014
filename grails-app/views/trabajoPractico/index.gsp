
<%@ page import="ar.edu.unlam.eduweb.TrabajoPractico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trabajoPractico.label', default: 'TrabajoPractico')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-trabajoPractico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-trabajoPractico" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="archivo" title="${message(code: 'trabajoPractico.archivo.label', default: 'Archivo')}" />
					
						<g:sortableColumn property="consigna" title="${message(code: 'trabajoPractico.consigna.label', default: 'Consigna')}" />
					
						<th><g:message code="trabajoPractico.estado.label" default="Estado" /></th>
					
						<g:sortableColumn property="fechaEntrega" title="${message(code: 'trabajoPractico.fechaEntrega.label', default: 'Fecha Entrega')}" />
					
						<g:sortableColumn property="fechaInicio" title="${message(code: 'trabajoPractico.fechaInicio.label', default: 'Fecha Inicio')}" />
					
						<g:sortableColumn property="mensajeTp" title="${message(code: 'trabajoPractico.mensajeTp.label', default: 'Mensaje Tp')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${trabajoPracticoInstanceList}" status="i" var="trabajoPracticoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trabajoPracticoInstance.id}">${fieldValue(bean: trabajoPracticoInstance, field: "archivo")}</g:link></td>
					
						<td>${fieldValue(bean: trabajoPracticoInstance, field: "consigna")}</td>
					
						<td>${fieldValue(bean: trabajoPracticoInstance, field: "estado")}</td>
					
						<td><g:formatDate date="${trabajoPracticoInstance.fechaEntrega}" /></td>
					
						<td><g:formatDate date="${trabajoPracticoInstance.fechaInicio}" /></td>
					
						<td>${fieldValue(bean: trabajoPracticoInstance, field: "mensajeTp")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trabajoPracticoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
