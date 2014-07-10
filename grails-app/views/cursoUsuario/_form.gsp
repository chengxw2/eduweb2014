<%@ page import="ar.edu.unlam.eduweb.CursoUsuario" %>



<div class="fieldcontain ${hasErrors(bean: cursoUsuarioInstance, field: 'curso', 'error')} required">
	<label for="curso">
		<g:message code="cursoUsuario.curso.label" default="Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="curso" name="curso.id" from="${ar.edu.unlam.eduweb.Curso.list()}" optionKey="id" required="" value="${cursoUsuarioInstance?.curso?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cursoUsuarioInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="cursoUsuario.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${ar.edu.unlam.eduweb.Usuario.list()}" optionKey="id" required="" value="${cursoUsuarioInstance?.usuario?.id}" class="many-to-one"/>

</div>

