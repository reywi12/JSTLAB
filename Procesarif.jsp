<% request.setCharacterEncoding("UTF-8"); %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty param.nombre}">
  <c:redirect url="Datosif.jsp">
    <c:param name="error" value="Nombre obligatorio"/>
  </c:redirect>
</c:if>
<c:if test="${empty param.apellido1}">
  <c:redirect url="Datosif.jsp">
    <c:param name="error" value="Primer apellido obligatorio"/>
  </c:redirect>
</c:if>
<c:set var="titulo" value="Imprimiendo parámetros"/><c:set var="activo" value="e4"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h2>Imprimiendo parámetros con JSTL</h2>
<p class="sub">La validación con <code>c:if</code> pasó: el nombre y el primer apellido llegaron con contenido.</p>
<div class="card">
  <h3>Resultado</h3>
  <p>Nombre: <strong><c:out value="${param.nombre}"/></strong></p>
  <p>Primer apellido: <strong><c:out value="${param.apellido1}"/></strong></p>
  <p>Segundo apellido: <strong><c:out value="${param.apellido2}"/></strong></p>
</div>
<div class="card">
  <h3>Las tres validaciones</h3>
  <p><code>${'${'}empty param.nombre}</code> &rarr; no se cumplió</p>
  <p><code>${'${'}empty param.apellido1}</code> &rarr; no se cumplió</p>
  <div class="aviso info">
    <code>c:redirect</code> va al principio de la página: tras la redirección la respuesta actual
    ya no se imprime, así que las comprobaciones deben ejecutarse antes de escribir nada.
  </div>
</div>
<a class="btn sec" href="Datosif.jsp">Volver</a>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>