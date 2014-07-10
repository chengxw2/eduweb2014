<%@ page import="ar.edu.unlam.eduweb.Evaluacion" %>



<div class="fieldcontain ${hasErrors(bean: evaluacionInstance, field: 'consigna', 'error')} ">
	<label for="consigna">
		<g:message code="evaluacion.consigna.label" default="Consigna" />
		
	</label>
	<g:textField name="consigna" value="${evaluacionInstance?.consigna}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: evaluacionInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="evaluacion.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estado" name="estado.id" from="${ar.edu.unlam.eduweb.EstadoActividad.list()}" optionKey="id" required="" value="${evaluacionInstance?.estado?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: evaluacionInstance, field: 'fechaEntrega', 'error')} required">
	<label for="fechaEntrega">
		<g:message code="evaluacion.fechaEntrega.label" default="Fecha Entrega" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaEntrega" precision="day"  value="${evaluacionInstance?.fechaEntrega}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: evaluacionInstance, field: 'fechaInicio', 'error')} required">
	<label for="fechaInicio">
		<g:message code="evaluacion.fechaInicio.label" default="Fecha Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaInicio" precision="day"  value="${evaluacionInstance?.fechaInicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: evaluacionInstance, field: 'nota', 'error')} required">
	<label for="nota">
		<g:message code="evaluacion.nota.label" default="Nota" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="nota" name="nota.id" from="${ar.edu.unlam.eduweb.Nota.list()}" optionKey="id" required="" value="${evaluacionInstance?.nota?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: evaluacionInstance, field: 'pregunta', 'error')} ">
	<label for="pregunta">
		<g:message code="evaluacion.pregunta.label" default="Pregunta" />
		
	</label>
	<g:textField name="pregunta" value="${evaluacionInstance?.pregunta}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: evaluacionInstance, field: 'respuesta', 'error')} ">
	<label for="respuesta">
		<g:message code="evaluacion.respuesta.label" default="Respuesta" />
		
	</label>
	<g:textField name="respuesta" value="${evaluacionInstance?.respuesta}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: evaluacionInstance, field: 'titulo', 'error')} ">
	<label for="titulo">
		<g:message code="evaluacion.titulo.label" default="Titulo" />
		
	</label>
	<g:textField name="titulo" value="${evaluacionInstance?.titulo}"/>

</div>

