<%@ page import="ar.edu.unlam.eduweb.Evento" %>



<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'descripcionEvento', 'error')} ">
	<label for="descripcionEvento">
		<g:message code="evento.descripcionEvento.label" default="Descripcion Evento" />
		
	</label>
	<g:textField name="descripcionEvento" value="${eventoInstance?.descripcionEvento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'fechaHoraFin', 'error')} required">
	<label for="fechaHoraFin">
		<g:message code="evento.fechaHoraFin.label" default="Fecha Hora Fin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaHoraFin" precision="day"  value="${eventoInstance?.fechaHoraFin}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'fechaHoraInicio', 'error')} required">
	<label for="fechaHoraInicio">
		<g:message code="evento.fechaHoraInicio.label" default="Fecha Hora Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaHoraInicio" precision="day"  value="${eventoInstance?.fechaHoraInicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'tituloEvento', 'error')} ">
	<label for="tituloEvento">
		<g:message code="evento.tituloEvento.label" default="Titulo Evento" />
		
	</label>
	<g:textField name="tituloEvento" value="${eventoInstance?.tituloEvento}"/>

</div>

