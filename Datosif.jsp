<% request.setCharacterEncoding("UTF-8"); %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Datosif"/><c:set var="activo" value="e4"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h2>Ejercicio 4 · Datos de una Persona</h2>
<p class="sub">Los campos no llevan <code>required</code>: valida el servidor en <code>Procesarif.jsp</code>.</p>
<div class="card">
  <h3>Ingrese los datos de la persona</h3>
  <c:if test="${not empty param.error}">
    <div class="aviso error"><strong>Error!</strong> <c:out value="${param.error}"/></div>
  </c:if>
  <form action="Procesarif.jsp" name="persona" method="post">
    <label for="nombre">Nombre</label>
    <input id="nombre" name="nombre" value="<c:out value="${param.nombre}"/>" placeholder="Digite el Nombre">
    <label for="apellido1">Primer Apellido</label>
    <input id="apellido1" name="apellido1" value="<c:out value="${param.apellido1}"/>" placeholder="Primer Apellido">
    <label for="apellido2">Segundo Apellido</label>
    <input id="apellido2" name="apellido2" value="<c:out value="${param.apellido2}"/>" placeholder="Segundo Apellido">
    <button class="btn" type="submit" name="enviar">Enviar Informacion</button>
  </form>
</div>
<a class="btn sec" href="index.jsp">Volver</a>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>