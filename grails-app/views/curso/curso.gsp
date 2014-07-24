
<%@ page import="ar.edu.unlam.eduweb.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${nuevoUser.usuario.username}" />
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
             background-image:url('../images/menu.png');
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

			#page-body-curso {
				margin: 2em 1em 1.25em 28em;
				
			}
			
			#page-body-curso  h1{
			 color:#2E9AFE;
			}
			
			#page-body-curso a{
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

				#page-body-curso {
					margin: 0 1em 1em;
					width:500px;
				}

				#page-body-curso h1 {
					margin-top: 0;
					color:#fffff;
				}
				
				#page-body-curso table tbody tr td a {
				text-decoration:none;
				}
				
			
		</style>
	</head>
	<body>
	    <a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
		    <a href="${createLink(controller:'curso', action: 'index')}" >Curso </a>
			<a href="#">Foro</a>
			<a href="#">Chat</a>
			<img id='chicos2' src="${resource(dir: 'images', file: 'chicos2.png')}" alt="Grails"/>
		</div>
		
		<a href="#list-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="page-body-curso" role="main">
	      <h1>Foros</h1>
	      <table>
	         <thead>
					<tr>
					   <g:sortableColumn property="fecha" title="${message(code: 'temaForo.curso.label', default: 'Curso')}" />
					
						<g:sortableColumn property="mensaje" title="${message(code: 'temaForo.mensaje.label', default: 'Profesor')}" />
					
						<g:sortableColumn property="titulo" title="${message(code: 'temaForo.titulo.label', default: 'Temas abiertos')}" />
					
					</tr>
				</thead>
			  <tbody>
				<g:each in="${nuevoUser}" status="i" var="cursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					   <td><g:link controller="TemaForo" action="index" id="${cursoInstance.curso.id}">${fieldValue(bean: cursoInstance.curso, field: "nombre")}</g:link></td>
					   <td>${fieldValue(bean: cursoInstance.usuario, field: "username")}</td>
					   <td>${cursoInstance.curso.cantidadTemas}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			
			</div>
			<div class="pagination">
				<g:paginate total="${cursoInstanceCount ?: 0}" />
			</div>
	</body>
</html>
