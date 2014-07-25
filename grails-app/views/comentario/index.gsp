
<%@ page import="ar.edu.unlam.eduweb.Comentario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comentario.label', default: 'Comentario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<style type="text/css" media="screen">
		  .texto_principal{
				width:500px;;
			    float:left;
			    text-align:left;
			    margin-left:30px;
			    margin-top:-60px;
				}
				
				 .texto_principal h1{
				font-size:40px;
				color:#2E9AFE;
				}
				
				 .texto_principal img{
				  margin-top:-90px;
				  margin-left:170px;
				 
				 }
				
			#status {
				background-color: #eee;
				border: .9em solid #fff;
				margin: -6em 2em 1em;
				margin-left:2px;
				padding: 1em;
				width: 20em;
				height:700px;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
             }
             
             #status a{
             background-image:url('../../images/menu.png');
             width:315px;
             height:38px;
             text-decoration:none;
             color:#ff5210;
             float:left;
             padding-top:40px;
              padding-left:20px;
             }

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body-comentario {
				margin: 2em 1em 1.25em 28em;
				
			}
			
			#page-body-comentario  h1{
			 color:#2E9AFE;
			}
			
			#page-body-comentario a{
			text-decoration:none;
			color:#000000;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body-comentario {
					margin: 0 1em 1em;
					width:500px;
				}

				#page-body-comentario h1 {
					margin-top: 0;
					color:#fffff;
				}
				
				#page-body-comentario table tbody tr td a {
				text-decoration:none;
				}
				
			
		</style>
	</head>
	<body>
	       
		<div id="status" role="complementary">
		    <a href="${createLink(controller:'curso', action: 'index')}" >Curso </a>
			<a href="#">Foro</a>
			<a href="#">Chat</a>
			<img id='chicos2' src="${resource(dir: 'images', file: 'chicos2.png')}" alt="Grails"/>
		</div>
		
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-comentario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		    <div id="page-body-comentario" role="main">
			<table>
			<thead>
					<tr>
					
						<th><g:message code="comentario.autorComentario.label" default="Tema Foro" /></th>
					
						<g:sortableColumn property="fechaComentario" title="${message(code: 'comentario.fechaComentario.label', default: 'Fecha ')}" />
					
						<g:sortableColumn property="mensajeComentario" title="${message(code: 'comentario.mensajeComentario.label', default: 'Mensaje ')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${listaComentario}" status="i" var="comentarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${comentarioInstance.id}">${fieldValue(bean: comentarioInstance.temaForo, field: "titulo")}</g:link></td>
					
						<td><g:formatDate date="${comentarioInstance.fecha}" /></td>
					
						<td>${fieldValue(bean: comentarioInstance, field: "mensaje")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			</div>
			<div class="pagination">
				<g:paginate total="${comentarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
