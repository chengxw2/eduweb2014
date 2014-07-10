<%@ page import="ar.edu.unlam.eduweb.TemaForo" %>



<div class="fieldcontain ${hasErrors(bean: temaForoInstance, field: 'autorTema', 'error')} required">
	<label for="autorTema">
		<g:message code="temaForo.autorTema.label" default="Autor Tema" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="autorTema" name="autorTema.id" from="${ar.edu.unlam.eduweb.Usuario.list()}" optionKey="id" required="" value="${temaForoInstance?.autorTema?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: temaForoInstance, field: 'categoriaForo', 'error')} required">
	<label for="categoriaForo">
		<g:message code="temaForo.categoriaForo.label" default="Categoria Foro" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categoriaForo" name="categoriaForo.id" from="${ar.edu.unlam.eduweb.CategoriaTema.list()}" optionKey="id" required="" value="${temaForoInstance?.categoriaForo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: temaForoInstance, field: 'comentarios', 'error')} ">
	<label for="comentarios">
		<g:message code="temaForo.comentarios.label" default="Comentarios" />
		
	</label>
	<g:select name="comentarios" from="${ar.edu.unlam.eduweb.Comentario.list()}" multiple="multiple" optionKey="id" size="5" value="${temaForoInstance?.comentarios*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: temaForoInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="temaForo.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${temaForoInstance?.fecha}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: temaForoInstance, field: 'mensaje', 'error')} ">
	<label for="mensaje">
		<g:message code="temaForo.mensaje.label" default="Mensaje" />
		
	</label>
	<g:textField name="mensaje" value="${temaForoInstance?.mensaje}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: temaForoInstance, field: 'titulo', 'error')} ">
	<label for="titulo">
		<g:message code="temaForo.titulo.label" default="Titulo" />
		
	</label>
	<g:textField name="titulo" value="${temaForoInstance?.titulo}"/>

</div>

