<%@ page import="ar.edu.unlam.eduweb.Actividad" %>



<div class="fieldcontain ${hasErrors(bean: actividadInstance, field: 'consigna', 'error')} ">
	<label for="consigna">
		<g:message code="actividad.consigna.label" default="Consigna" />
		
	</label>
	<g:textField name="consigna" value="${actividadInstance?.consigna}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: actividadInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="actividad.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estado" name="estado.id" from="${ar.edu.unlam.eduweb.EstadoActividad.list()}" optionKey="id" required="" value="${actividadInstance?.estado?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: actividadInstance, field: 'fechaEntrega', 'error')} required">
	<label for="fechaEntrega">
		<g:message code="actividad.fechaEntrega.label" default="Fecha Entrega" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaEntrega" precision="day"  value="${actividadInstance?.fechaEntrega}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: actividadInstance, field: 'fechaInicio', 'error')} required">
	<label for="fechaInicio">
		<g:message code="actividad.fechaInicio.label" default="Fecha Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaInicio" precision="day"  value="${actividadInstance?.fechaInicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: actividadInstance, field: 'nota', 'error')} required">
	<label for="nota">
		<g:message code="actividad.nota.label" default="Nota" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="nota" name="nota.id" from="${ar.edu.unlam.eduweb.Nota.list()}" optionKey="id" required="" value="${actividadInstance?.nota?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: actividadInstance, field: 'titulo', 'error')} ">
	<label for="titulo">
		<g:message code="actividad.titulo.label" default="Titulo" />
		
	</label>
	<g:textField name="titulo" value="${actividadInstance?.titulo}"/>

</div>

