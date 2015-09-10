
<%@ page import="distancia.Percurso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'percurso.label', default: 'Percurso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-percurso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-percurso" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="autonomia" title="${message(code: 'percurso.autonomia.label', default: 'Autonomia')}" />
					
						<g:sortableColumn property="precoLitro" title="${message(code: 'percurso.precoLitro.label', default: 'Preco Litro')}" />
					
						<g:sortableColumn property="custoViagem" title="${message(code: 'percurso.custoViagem.label', default: 'Custo Viagem')}" />
					
						<th><g:message code="percurso.destino.label" default="Destino" /></th>
					
						<g:sortableColumn property="distanciaTotal" title="${message(code: 'percurso.distanciaTotal.label', default: 'Distancia Total')}" />
					
						<th><g:message code="percurso.mapa.label" default="Mapa" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${percursoInstanceList}" status="i" var="percursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${percursoInstance.id}">${fieldValue(bean: percursoInstance, field: "autonomia")}</g:link></td>
					
						<td>${fieldValue(bean: percursoInstance, field: "precoLitro")}</td>
					
						<td>${fieldValue(bean: percursoInstance, field: "custoViagem")}</td>
					
						<td>${fieldValue(bean: percursoInstance, field: "destino")}</td>
					
						<td>${fieldValue(bean: percursoInstance, field: "distanciaTotal")}</td>
					
						<td>${fieldValue(bean: percursoInstance, field: "mapa")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${percursoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
