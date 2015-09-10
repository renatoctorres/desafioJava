
<%@ page import="distancia.Percurso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'percurso.label', default: 'Percurso')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-percurso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-percurso" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list percurso">
			
				<g:if test="${percursoInstance?.autonomia}">
				<li class="fieldcontain">
					<span id="autonomia-label" class="property-label"><g:message code="percurso.autonomia.label" default="Autonomia" /></span>
					
						<span class="property-value" aria-labelledby="autonomia-label"><g:fieldValue bean="${percursoInstance}" field="autonomia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${percursoInstance?.precoLitro}">
				<li class="fieldcontain">
					<span id="precoLitro-label" class="property-label"><g:message code="percurso.precoLitro.label" default="Preco Litro" /></span>
					
						<span class="property-value" aria-labelledby="precoLitro-label"><g:fieldValue bean="${percursoInstance}" field="precoLitro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${percursoInstance?.custoViagem}">
				<li class="fieldcontain">
					<span id="custoViagem-label" class="property-label"><g:message code="percurso.custoViagem.label" default="Custo Viagem" /></span>
					
						<span class="property-value" aria-labelledby="custoViagem-label"><g:fieldValue bean="${percursoInstance}" field="custoViagem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${percursoInstance?.destino}">
				<li class="fieldcontain">
					<span id="destino-label" class="property-label"><g:message code="percurso.destino.label" default="Destino" /></span>
					
						<span class="property-value" aria-labelledby="destino-label"><g:link controller="ponto" action="show" id="${percursoInstance?.destino?.id}">${percursoInstance?.destino?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${percursoInstance?.distanciaTotal}">
				<li class="fieldcontain">
					<span id="distanciaTotal-label" class="property-label"><g:message code="percurso.distanciaTotal.label" default="Distancia Total" /></span>
					
						<span class="property-value" aria-labelledby="distanciaTotal-label"><g:fieldValue bean="${percursoInstance}" field="distanciaTotal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${percursoInstance?.mapa}">
				<li class="fieldcontain">
					<span id="mapa-label" class="property-label"><g:message code="percurso.mapa.label" default="Mapa" /></span>
					
						<span class="property-value" aria-labelledby="mapa-label"><g:link controller="mapa" action="show" id="${percursoInstance?.mapa?.id}">${percursoInstance?.mapa?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${percursoInstance?.origem}">
				<li class="fieldcontain">
					<span id="origem-label" class="property-label"><g:message code="percurso.origem.label" default="Origem" /></span>
					
						<span class="property-value" aria-labelledby="origem-label"><g:link controller="ponto" action="show" id="${percursoInstance?.origem?.id}">${percursoInstance?.origem?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:percursoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${percursoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
