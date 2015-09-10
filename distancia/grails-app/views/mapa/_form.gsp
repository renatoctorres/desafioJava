<%@ page import="distancia.Mapa" %>



<div class="fieldcontain ${hasErrors(bean: mapaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="mapa.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${mapaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mapaInstance, field: 'medidas', 'error')} ">
	<label for="medidas">
		<g:message code="mapa.medidas.label" default="Medidas" />
		
	</label>
	<g:select name="medidas" from="${distancia.Medida.list()}" multiple="multiple" optionKey="id" size="5" value="${mapaInstance?.medidas*.id}" class="many-to-many"/>

</div>

