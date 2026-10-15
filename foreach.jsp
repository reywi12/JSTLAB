<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Foreach"/><c:set var="activo" value="e7"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h2>Ejercicio 7 · Uso de c:forEach</h2>
<p class="sub">Rango con <code>begin</code>, <code>end</code> y <code>step</code>. <code>varStatus</code> expone <code>first</code>, <code>last</code>, <code>index</code> y <code>count</code>.</p>
<div class="card">
  <h3>Del 1 al 24, de dos en dos</h3>
  <c:forEach begin="1" end="24" step="2" var="hour" varStatus="status">
    <span class="chip ${status.first || status.count == 5 || status.last ? 'hl' : ''}">
      <c:out value="${hour}"/>
      <c:if test="${status.first}"> &middot; Estoy en uno</c:if>
      <c:if test="${status.count == 5}"> &middot; Estoy en la iteracion numero 5</c:if>
      <c:if test="${status.last}"> &middot; Estoy en el ultimo</c:if>
    </span>
  </c:forEach>
</div>
<div class="card">
  <h3>Tabla de estado del bucle</h3>
  <table>
    <tr><th>index</th><th>count</th><th>first</th><th>last</th><th>hour</th></tr>
    <c:forEach begin="1" end="24" step="2" var="hour" varStatus="status">
      <tr>
        <td>${status.index}</td>
        <td>${status.count}</td>
        <td>${status.first}</td>
        <td>${status.last}</td>
        <td><c:out value="${hour}"/></td>
      </tr>
    </c:forEach>
  </table>
</div>
<a class="btn sec" href="index.jsp">Volver</a>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>