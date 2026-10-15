<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="ForTokens"/><c:set var="activo" value="e8"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h2>Ejercicio 8 · c:forTokens</h2>
<p class="sub">Divide un texto seg&uacute;n los delimitadores indicados. Ejemplo: <code>rojo;verde;azul</code> con delimitador <code>;</code></p>
<div class="card">
  <h3>c:forTokens Demo</h3>
  <form role="form" name="forTokensForm" action="ResultTokens.jsp" method="POST">
    <label for="delimText">Enter some text with delimiter:</label>
    <input type="text" id="delimText" name="delimText" value="<c:out value='${param.delimText}'/>">
    <label for="delim">Enter the delimiter:</label>
    <input type="text" id="delim" name="delim" value="<c:out value='${param.delim}'/>">
    <button class="btn" type="submit">Tokenize</button>
  </form>
</div>
<a class="btn sec" href="index.jsp">Volver</a>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>