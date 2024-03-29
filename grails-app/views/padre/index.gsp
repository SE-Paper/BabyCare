
<%@ page import="babycare.Padre" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'padre.label', default: 'Padre')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-padre" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-padre" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'padre.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'padre.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="tipoDocumento" title="${message(code: 'padre.tipoDocumento.label', default: 'Tipo Documento')}" />
					
						<g:sortableColumn property="documento" title="${message(code: 'padre.documento.label', default: 'Documento')}" />
					
						<g:sortableColumn property="edad" title="${message(code: 'padre.edad.label', default: 'Edad')}" />
					
						<g:sortableColumn property="pesoPadre" title="${message(code: 'padre.pesoPadre.label', default: 'Peso Padre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${padreInstanceList}" status="i" var="padreInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${padreInstance.id}">${fieldValue(bean: padreInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: padreInstance, field: "apellido")}</td>
					
						<td>${fieldValue(bean: padreInstance, field: "tipoDocumento")}</td>
					
						<td>${fieldValue(bean: padreInstance, field: "documento")}</td>
					
						<td>${fieldValue(bean: padreInstance, field: "edad")}</td>
					
						<td>${fieldValue(bean: padreInstance, field: "pesoPadre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${padreInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
