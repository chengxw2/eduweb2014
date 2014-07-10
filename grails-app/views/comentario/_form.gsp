<%@ page import="ar.edu.unlam.eduweb.Comentario" %>



<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'autorComentario', 'error')} required">
	<label for="autorComentario">
		<g:message code="comentario.autorComentario.label" default="Autor Comentario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="autorComentario" name="autorComentario.id" from="${ar.edu.unlam.eduweb.Usuario.list()}" optionKey="id" required="" value="${comentarioInstance?.autorComentario?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'fechaComentario', 'error')} required">
	<label for="fechaComentario">
		<g:message code="comentario.fechaComentario.label" default="Fecha Comentario" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaComentario" precision="day"  value="${comentarioInstance?.fechaComentario}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'mensajeComentario', 'error')} ">
	<label for="mensajeComentario">
		<g:message code="comentario.mensajeComentario.label" default="Mensaje Comentario" />
		
	</label>
	<g:textField name="mensajeComentario" value="${comentarioInstance?.mensajeComentario}"/>

</div>

