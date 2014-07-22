
<%@ page import="ar.edu.unlam.eduweb.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
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
		<a href="#show-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
		    <a href="${createLink(controller:'curso', action: 'index')}" >Curso </a>
			<a href="#">Foro</a>
			<a href="#">Chat</a>
			 <img id='chicos2' src="${resource(dir: 'images', file: 'chicos2.png')}" alt="Grails"/>
		</div>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="show-curso" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label.curso" args="[entityName, cursoInstance.nombre, profe.nombreCompleto]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${cursoInstance.nombre}</div>
			</g:if>
			<ol class="property-list curso">
			
				<g:if test="${cursoInstance?.actividades}">
				<li class="fieldcontain">
					<span id="actividades-label" class="property-label"><g:message code="curso.actividades.label" default="Actividades" /></span>
					
						<g:each in="${cursoInstance.actividades}" var="a">
						<span class="property-value" aria-labelledby="actividades-label"><g:link controller="actividad" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.cursoUsuarios}">
				<li class="fieldcontain">
					<span id="cursousuarios-label" class="property-label"><g:message code="curso.cursousuarios.label" default="Cursousuarios" /></span>
					
						<g:each in="${cursoInstance.cursoUsuarios}" var="c">
						<span class="property-value" aria-labelledby="cursousuarios-label"><g:link controller="cursoUsuario" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.eventos}">
				<li class="fieldcontain">
					<span id="eventos-label" class="property-label"><g:message code="curso.eventos.label" default="Eventos" /></span>
					
						<g:each in="${cursoInstance.eventos}" var="e">
						<span class="property-value" aria-labelledby="eventos-label"><g:link controller="evento" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="curso.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${cursoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.temasForo}">
				<li class="fieldcontain">
					<span id="temasforo-label" class="property-label"><g:message code="curso.temasforo.label" default="Temasforo" /></span>
					
						<g:each in="${cursoInstance.temasForo}" var="t">
						<span class="property-value" aria-labelledby="temasforo-label"><g:link controller="temaForo" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
		</div>
	</body>
</html>
