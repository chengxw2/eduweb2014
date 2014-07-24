<%@ page import="ar.edu.unlam.eduweb.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'actividades', 'error')} ">
	<label for="actividades">
		<g:message code="curso.actividades.label" default="Actividades" />
		
	</label>
	<g:select name="actividades" from="${ar.edu.unlam.eduweb.Actividad.list()}" multiple="multiple" optionKey="id" size="5" value="${cursoInstance?.actividades*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'cursousuarios', 'error')} ">
	<label for="cursousuarios">
		<g:message code="curso.cursousuarios.label" default="Cursousuarios" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${cursoInstance?.cursousuarios?}" var="c">
    <li><g:link controller="cursoUsuario" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="cursoUsuario" action="create" params="['curso.id': cursoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'cursoUsuario.label', default: 'CursoUsuario')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'eventos', 'error')} ">
	<label for="eventos">
		<g:message code="curso.eventos.label" default="Eventos" />
		
	</label>
	<g:select name="eventos" from="${ar.edu.unlam.eduweb.Evento.list()}" multiple="multiple" optionKey="id" size="5" value="${cursoInstance?.eventos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="curso.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${cursoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'temasforo', 'error')} ">
	<label for="temasforo">
		<g:message code="curso.temasforo.label" default="Temasforo" />
		
	</label>
	<g:select name="temasforo" from="${ar.edu.unlam.eduweb.TemaForo.list()}" multiple="multiple" optionKey="id" size="5" value="${cursoInstance?.temasforo*.id}" class="many-to-many"/>

</div>

