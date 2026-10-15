<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Lenguaje"/><c:set var="activo" value="e5"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h2>Ejercicio 5 · Lenguaje</h2>
<p class="sub"><code>c:choose</code> procesa el cuerpo del primer <code>when</code> cuya condición en <code>test</code> se evalúe a cierto; si ninguna se cumple, procesa <code>otherwise</code>.</p>
<div class="card">
  <h3>Lenguaje con JSTL</h3>
  <form role="form" name="lenguaje" action="ProcesarC2.jsp" method="post">
    <label for="lenguaje">&iquest;Cu&aacute;l es tu lenguaje de programaci&oacute;n favorito?</label>
    <select name="lenguaje" id="lenguaje">
      <option value="">--Seleccionar un Lenguaje</option>
      <option value="Java">Java</option>
      <option value="C++">C++</option>
      <option value="Perl">Perl</option>
    </select>
    <button class="btn" type="submit">Enviar</button>
  </form>
</div>
<a class="btn sec" href="index.jsp">Volver</a>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>