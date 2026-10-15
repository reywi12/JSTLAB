<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Primer Ejercicio"/><c:set var="activo" value="e1"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h2>Ejercicio 1 · Primer Ejemplo con JSTL</h2>
<p class="sub">Sin <code>${'${'}...}</code> el valor se imprime como texto; con Expression Language se evalúa.</p>
<div class="card">
  <h3>Resultado</h3>
  <p>Cadena de caracteres: <strong><c:out value="1+2+3"/></strong></p>
  <p>Suma de valores: <strong><c:out value="${1+2+3}"/></strong></p>
</div>
<div class="card">
  <h3>Variantes de la misma etiqueta</h3>
  <p>Comparación <code>5 &gt; 3</code>: <c:out value="${5 > 3}"/></p>
  <p>Valor ausente, con <code>default</code>: <c:out value="${vacio}" default="(vacio)"/></p>
  <p>Escape de HTML: <c:out value="<b>negrita</b>"/></p>
  <div class="aviso info">
    El marcado de la última línea sale como texto porque <code>c:out</code> escapa por defecto
    (<code>escapeXml="true"</code>). Con <code>escapeXml="false"</code> se interpretaría como HTML real.
  </div>
</div>
<a class="btn sec" href="index.jsp">Volver</a>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>