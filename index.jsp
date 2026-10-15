<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Inicio"/><c:set var="activo" value="inicio"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h2>Laboratorio JSTL</h2>
<p class="sub">Ejercicios de la guía de JSTL con las etiquetas de la librería core.</p>
<div class="grid">
  <a class="tile" href="Eje1.jsp"><b>EJERCICIO 1</b>Primer Ejercicio<br><span>Texto plano vs. expresiones EL.</span></a>
  <a class="tile" href="Datos.jsp"><b>EJERCICIO 2</b>Datos<br><span>Capturar los datos usando JSTL.</span></a>
  <a class="tile" href="set1.jsp"><b>EJERCICIO 3</b>Uso del set<br><span>Usando la etiqueta set con JSTL.</span></a>
  <a class="tile" href="Datosif.jsp"><b>EJERCICIO 4</b>Datosif<br><span>Capturar los datos con c:if.</span></a>
  <a class="tile" href="Lenguaje.jsp"><b>EJERCICIO 5</b>Lenguaje<br><span>c:choose, c:when y c:otherwise.</span></a>
  <a class="tile" href="catch.jsp"><b>EJERCICIO 6</b>Catch<br><span>Usando la sentencia catch con JSTL.</span></a>
  <a class="tile" href="foreach.jsp"><b>EJERCICIO 7</b>Foreach<br><span>Usando la sentencia Foreach con JSTL.</span></a>
  <a class="tile" href="ForTokens.jsp"><b>EJERCICIO 8</b>ForTokens<br><span>Usando ForTokens con JSTL.</span></a>
</div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>