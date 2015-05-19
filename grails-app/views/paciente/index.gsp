
<%@ page import="babycare.Paciente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-paciente" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'paciente.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'paciente.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="sexo" title="${message(code: 'paciente.sexo.label', default: 'Sexo')}" />
					
						<g:sortableColumn property="tipoDocumento" title="${message(code: 'paciente.tipoDocumento.label', default: 'Tipo Documento')}" />
					
						<g:sortableColumn property="documento" title="${message(code: 'paciente.documento.label', default: 'Documento')}" />
					
						<g:sortableColumn property="edad" title="${message(code: 'paciente.edad.label', default: 'Edad')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pacienteInstanceList}" status="i" var="pacienteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pacienteInstance.id}">${fieldValue(bean: pacienteInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: pacienteInstance, field: "apellido")}</td>
					
						<td>${fieldValue(bean: pacienteInstance, field: "sexo")}</td>
					
						<td>${fieldValue(bean: pacienteInstance, field: "tipoDocumento")}</td>
					
						<td>${fieldValue(bean: pacienteInstance, field: "documento")}</td>
					
						<td>${fieldValue(bean: pacienteInstance, field: "edad")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pacienteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
