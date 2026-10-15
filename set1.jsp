<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Uso del set"/><c:set var="activo" value="e3"/>
<c:set var="variableDePagina" scope="page">Esta informacion se guarda en la pagina</c:set>
<c:set var="variableDeSesion" scope="session">Esta informacion se guarda en la sesion</c:set>
<c:set var="variableDeAplicacion" scope="application">Esta informacion se guarda en la aplicacion</c:set>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h2>Ejercicio 3 · Uso de la etiqueta c:set</h2>
<p class="sub">El valor puede ir en el cuerpo de la etiqueta o en el atributo <code>value</code>. Sin <code>scope</code>, el ámbito es <code>page</code>.</p>
<div class="card">
  <h3>Variables por ámbito</h3>
  <p><strong>page</strong> &rarr; ${variableDePagina}</p>
  <p><strong>session</strong> &rarr; ${variableDeSesion}</p>
  <p><strong>application</strong> &rarr; ${variableDeAplicacion}</p>
</div>
<div class="card">
  <h3>Acceso con los objetos implícitos</h3>
  <p><code>pageScope.variableDePagina</code> &rarr; <c:out value="${pageScope.variableDePagina}"/></p>
  <p><code>sessionScope.variableDeSesion</code> &rarr; <c:out value="${sessionScope.variableDeSesion}"/></p>
  <p><code>applicationScope.variableDeAplicacion</code> &rarr; <c:out value="${applicationScope.variableDeAplicacion}"/></p>
  <c:remove var="variableDeSesion" scope="session"/>
  <p>Tras <code>c:remove</code>: <c:out value="${sessionScope.variableDeSesion}" default="(eliminada)"/></p>
</div>
<a class="btn sec" href="index.jsp">Volver</a>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>