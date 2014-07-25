<%@ page import="ar.edu.unlam.eduweb.Comentario" %>

<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'temaForo', 'error')} required">
<label for="temaForoComentario">
<g:message code="comentario.autorComentario.label" default="TemaForo" />
<span class="required-indicator">*</span>
</label>
<g:select id="temaForo" name="temaForo.id" from="${ar.edu.unlam.eduweb.TemaForo.list()}" optionKey="id" required="" value="${comentarioInstance?.temaForo?.id}" class="many-to-one"/>


<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'autor', 'error')} required">
<label for="autorComentario">
<g:message code="comentario.autorComentario.label" default="Autor" />
<span class="required-indicator">*</span>
</label>
<g:select id="autor" name="autor.id" from="${ar.edu.unlam.eduweb.Usuario.list()}" optionKey="id" required="" value="${comentarioInstance?.autor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="comentario.fecha.label" default="Fecha " />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${comentarioInstance?.fecha}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'mensaje', 'error')} ">
	<label for="mensaje">
		<g:message code="comentario.mensaje.label" default="Mensaje" />
		
	</label>
	<g:textField name="mensaje" value="${comentarioInstance?.mensaje}"/>

</div>

