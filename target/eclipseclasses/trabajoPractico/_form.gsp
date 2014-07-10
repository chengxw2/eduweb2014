<%@ page import="ar.edu.unlam.eduweb.TrabajoPractico" %>



<div class="fieldcontain ${hasErrors(bean: trabajoPracticoInstance, field: 'archivo', 'error')} ">
	<label for="archivo">
		<g:message code="trabajoPractico.archivo.label" default="Archivo" />
		
	</label>
	<g:textField name="archivo" value="${trabajoPracticoInstance?.archivo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trabajoPracticoInstance, field: 'consigna', 'error')} ">
	<label for="consigna">
		<g:message code="trabajoPractico.consigna.label" default="Consigna" />
		
	</label>
	<g:textField name="consigna" value="${trabajoPracticoInstance?.consigna}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trabajoPracticoInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="trabajoPractico.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estado" name="estado.id" from="${ar.edu.unlam.eduweb.EstadoActividad.list()}" optionKey="id" required="" value="${trabajoPracticoInstance?.estado?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trabajoPracticoInstance, field: 'fechaEntrega', 'error')} required">
	<label for="fechaEntrega">
		<g:message code="trabajoPractico.fechaEntrega.label" default="Fecha Entrega" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaEntrega" precision="day"  value="${trabajoPracticoInstance?.fechaEntrega}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: trabajoPracticoInstance, field: 'fechaInicio', 'error')} required">
	<label for="fechaInicio">
		<g:message code="trabajoPractico.fechaInicio.label" default="Fecha Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaInicio" precision="day"  value="${trabajoPracticoInstance?.fechaInicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: trabajoPracticoInstance, field: 'mensajeTp', 'error')} ">
	<label for="mensajeTp">
		<g:message code="trabajoPractico.mensajeTp.label" default="Mensaje Tp" />
		
	</label>
	<g:textField name="mensajeTp" value="${trabajoPracticoInstance?.mensajeTp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trabajoPracticoInstance, field: 'nota', 'error')} required">
	<label for="nota">
		<g:message code="trabajoPractico.nota.label" default="Nota" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="nota" name="nota.id" from="${ar.edu.unlam.eduweb.Nota.list()}" optionKey="id" required="" value="${trabajoPracticoInstance?.nota?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trabajoPracticoInstance, field: 'titulo', 'error')} ">
	<label for="titulo">
		<g:message code="trabajoPractico.titulo.label" default="Titulo" />
		
	</label>
	<g:textField name="titulo" value="${trabajoPracticoInstance?.titulo}"/>

</div>

