
<%@ page import="ar.edu.unlam.eduweb.Comentario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comentario.label', default: 'Comentario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
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
	    <div id="status" role="complementary">
		    <a href="${createLink(controller:'curso', action: 'index')}" >Curso </a>
			<a href="#">Foro</a>
			<a href="#">Chat</a>
			<img id='chicos2' src="${resource(dir: 'images', file: 'chicos2.png')}" alt="Grails"/>
		</div>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-comentario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list comentario">
			
				<g:if test="${comentarioInstance?.autor}">
				<li class="fieldcontain">
					<span id="autorComentario-label" class="property-label"><g:message code="comentario.autorComentario.label" default="Autor Comentario" /></span>
					
						<span class="property-value" aria-labelledby="autorComentario-label"><g:link controller="usuario" action="show" id="${comentarioInstance?.autor?.id}">${comentarioInstance?.autor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${comentarioInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fechaComentario-label" class="property-label"><g:message code="comentario.fechaComentario.label" default="Fecha Comentario" /></span>
					
						<span class="property-value" aria-labelledby="fechaComentario-label"><g:formatDate date="${comentarioInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${comentarioInstance?.mensaje}">
				<li class="fieldcontain">
					<span id="mensajeComentario-label" class="property-label"><g:message code="comentario.mensajeComentario.label" default="Mensaje Comentario" /></span>
					
						<span class="property-value" aria-labelledby="mensajeComentario-label"><g:fieldValue bean="${comentarioInstance}" field="mensaje"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:comentarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${comentarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
