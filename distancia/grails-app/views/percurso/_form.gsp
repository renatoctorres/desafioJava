<%@ page import="distancia.Percurso" %>



<div class="fieldcontain ${hasErrors(bean: percursoInstance, field: 'autonomia', 'error')} required">
	<label for="autonomia">
		<g:message code="percurso.autonomia.label" default="Autonomia" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="autonomia" value="${fieldValue(bean: percursoInstance, field: 'autonomia')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: percursoInstance, field: 'precoLitro', 'error')} required">
	<label for="precoLitro">
		<g:message code="percurso.precoLitro.label" default="Preco Litro" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precoLitro" value="${fieldValue(bean: percursoInstance, field: 'precoLitro')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: percursoInstance, field: 'custoViagem', 'error')} required">
	<label for="custoViagem">
		<g:message code="percurso.custoViagem.label" default="Custo Viagem" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="custoViagem" value="${fieldValue(bean: percursoInstance, field: 'custoViagem')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: percursoInstance, field: 'destino', 'error')} required">
	<label for="destino">
		<g:message code="percurso.destino.label" default="Destino" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="destino" name="destino.id" from="${distancia.Ponto.list()}" optionKey="id" required="" value="${percursoInstance?.destino?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: percursoInstance, field: 'distanciaTotal', 'error')} required">
	<label for="distanciaTotal">
		<g:message code="percurso.distanciaTotal.label" default="Distancia Total" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="distanciaTotal" value="${fieldValue(bean: percursoInstance, field: 'distanciaTotal')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: percursoInstance, field: 'mapa', 'error')} required">
	<label for="mapa">
		<g:message code="percurso.mapa.label" default="Mapa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="mapa" name="mapa.id" from="${distancia.Mapa.list()}" optionKey="id" required="" value="${percursoInstance?.mapa?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: percursoInstance, field: 'origem', 'error')} required">
	<label for="origem">
		<g:message code="percurso.origem.label" default="Origem" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="origem" name="origem.id" from="${distancia.Ponto.list()}" optionKey="id" required="" value="${percursoInstance?.origem?.id}" class="many-to-one"/>

</div>

