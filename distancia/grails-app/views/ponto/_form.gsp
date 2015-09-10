<%@ page import="distancia.Ponto" %>



<div class="fieldcontain ${hasErrors(bean: pontoInstance, field: 'letra', 'error')} required">
	<label for="letra">
		<g:message code="ponto.letra.label" default="Letra" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="letra" from="${pontoInstance.constraints.letra.inList}" required="" value="${pontoInstance?.letra}" valueMessagePrefix="ponto.letra"/>

</div>

