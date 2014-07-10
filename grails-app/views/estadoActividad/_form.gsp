<%@ page import="ar.edu.unlam.eduweb.EstadoActividad" %>



<div class="fieldcontain ${hasErrors(bean: estadoActividadInstance, field: 'estadoActividad', 'error')} ">
	<label for="estadoActividad">
		<g:message code="estadoActividad.estadoActividad.label" default="Estado Actividad" />
		
	</label>
	<g:textField name="estadoActividad" value="${estadoActividadInstance?.estadoActividad}"/>

</div>

