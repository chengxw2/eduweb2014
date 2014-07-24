<%@ page import="ar.edu.unlam.eduweb.Nota" %>



<div class="fieldcontain ${hasErrors(bean: notaInstance, field: 'nota', 'error')} ">
	<label for="nota">
		<g:message code="nota.nota.label" default="Nota" />
		
	</label>
	<g:textField name="nota" value="${notaInstance?.nota}"/>

</div>

