<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Catch"/><c:set var="activo" value="e6"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h2>Ejercicio 6 · Uso de la etiqueta c:catch</h2>
<p class="sub">Captura la excepción sin abortar la página. La variable de <code>var</code> no es nula si se produjo el error.</p>
<c:catch var="error01">
  <%
    int valor = Integer.parseInt(request.getParameter("parametro"));
    pageContext.setAttribute("valor", valor);
  %>
</c:catch>
<div class="card">
  <h3>Resultado</h3>
  <c:if test="${not empty error01}">
    <div class="aviso error"><strong>Se produjo un error:</strong> <c:out value="${error01}"/></div>
  </c:if>
  <c:if test="${valor != 0 && empty error01}">
    <div class="aviso ok"><strong>Valor recibido:</strong> <c:out value="${valor}"/></div>
  </c:if>
  <div class="fila">
    <a class="btn sec" href="catch.jsp?parametro=prueba">Enviar "prueba"</a>
    <a class="btn sec" href="catch.jsp?parametro=1234">Enviar "1234"</a>
    <a class="btn sec" href="catch.jsp">No enviar el parámetro</a>
  </div>
</div>
<a class="btn sec" href="index.jsp">Volver</a>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>