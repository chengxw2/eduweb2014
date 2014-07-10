<%@ page import="ar.edu.unlam.eduweb.CategoriaTema" %>



<div class="fieldcontain ${hasErrors(bean: categoriaTemaInstance, field: 'nombreCategoria', 'error')} ">
	<label for="nombreCategoria">
		<g:message code="categoriaTema.nombreCategoria.label" default="Nombre Categoria" />
		
	</label>
	<g:textField name="nombreCategoria" value="${categoriaTemaInstance?.nombreCategoria}"/>

</div>

