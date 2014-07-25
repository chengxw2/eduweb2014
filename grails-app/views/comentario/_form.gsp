<%@ page import="ar.edu.unlam.eduweb.Comentario" %>


<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'temaForo', 'error')} required">
	<label for="autorComentario">
		<g:message code="comentario.autorComentario.label" default="TemaForo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="autorComentario" value="${comentarioInstance?.temaForo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'autor', 'error')} required">
	<label for="autorComentario">
		<g:message code="comentario.autorComentario.label" default="Autor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="autorComentario" value=" ${applicationContext.springSecurityService.currentUser.id}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'fecha', 'error')} required">
	<label for="fechaComentario">
		<g:message code="comentario.fechaComentario.label" default="Fecha " />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaComentario" precision="day"  value="${comentarioInstance?.fecha}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'mensaje', 'error')} ">
	<label for="mensajeComentario">
		<g:message code="comentario.mensajeComentario.label" default="Mensaje" />
		
	</label>
	<g:textField name="mensajeComentario" value="${comentarioInstance?.mensaje}"/>

</div>

