<% request.setCharacterEncoding("UTF-8"); %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Imprimiendo parámetros"/><c:set var="activo" value="e2"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h2>Imprimiendo parámetros con JSTL</h2>
<p class="sub">Los datos se leen del objeto implícito <code>param</code> y se imprimen con <code>c:out</code>.</p>
<div class="card">
  <h3>Resultado</h3>
  <p>Nombre: <strong><c:out value="${param.nombre}"/></strong></p>
  <p>Primer apellido: <strong><c:out value="${param.apellido1}"/></strong></p>
  <p>Segundo apellido: <strong><c:out value="${param.apellido2}"/></strong></p>
</div>
<a class="btn sec" href="Datos.jsp">Volver</a>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>