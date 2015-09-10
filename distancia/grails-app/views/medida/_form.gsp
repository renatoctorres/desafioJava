<%@ page import="distancia.Medida" %>



<div class="fieldcontain ${hasErrors(bean: medidaInstance, field: 'destino', 'error')} required">
	<label for="destino">
		<g:message code="medida.destino.label" default="Destino" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="destino" name="destino.id" from="${distancia.Ponto.list()}" optionKey="id" optionValue="letra" required="" value="${medidaInstance?.destino?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: medidaInstance, field: 'mapa', 'error')} required">
	<label for="mapa">
		<g:message code="medida.mapa.label" default="Mapa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="mapa" name="mapa.id" from="${distancia.Mapa.list()}" optionKey="id" optionValue="nome" required="" value="${medidaInstance?.mapa?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: medidaInstance, field: 'origem', 'error')} required">
	<label for="origem">
		<g:message code="medida.origem.label" default="Origem" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="origem" name="origem.id" from="${distancia.Ponto.list()}" optionKey="id" optionValue="letra" required="" value="${medidaInstance?.origem?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: medidaInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="medida.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: medidaInstance, field: 'valor')}" required=""/>

</div>

