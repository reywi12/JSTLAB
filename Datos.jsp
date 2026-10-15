<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Datos"/><c:set var="activo" value="e2"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h2>Ejercicio 2 · Datos de una Persona</h2>
<p class="sub">Formulario que envía nombre y apellidos a <code>ProcesarC.jsp</code>.</p>
<div class="card">
  <h3>Ingrese los datos de la persona</h3>
  <form action="ProcesarC.jsp" name="persona" method="post">
    <label for="nombre">Nombre</label>
    <input id="nombre" name="nombre" placeholder="Digite el Nombre" required>
    <label for="apellido1">Primer Apellido</label>
    <input id="apellido1" name="apellido1" placeholder="Primer Apellido" required>
    <label for="apellido2">Segundo Apellido</label>
    <input id="apellido2" name="apellido2" placeholder="Segundo Apellido" required>
    <button class="btn" type="submit" name="enviar">Enviar Informacion</button>
  </form>
</div>
<a class="btn sec" href="index.jsp">Volver</a>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>