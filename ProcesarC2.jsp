<% request.setCharacterEncoding("UTF-8"); %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Lenguaje con JSTL"/><c:set var="activo" value="e5"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h2>Resultado</h2>
<p class="sub">Rama del <code>c:choose</code> que corresponde al lenguaje recibido.</p>
<div class="card">
  <h3>Lenguaje con JSTL</h3>
  <c:choose>
    <c:when test="${param.lenguaje == 'Java'}">
      <p><span class="chip hl">Java</span> El rey de los lenguajes orientados a objetos.</p>
    </c:when>
    <c:when test="${param.lenguaje == 'C++'}">
      <p><span class="chip hl">C++</span> Ideal para aprender.</p>
    </c:when>
    <c:when test="${param.lenguaje == 'Perl'}">
      <p><span class="chip hl">Perl</span> Lenguaje de scripting muy potente.</p>
    </c:when>
    <c:otherwise>
      <p>No se seleccion&oacute; ninguno.</p>
    </c:otherwise>
  </c:choose>
</div>
<div class="card">
  <h3>Probalo sin salir de la guia</h3>
  <div class="fila">
    <a class="btn sec" href="ProcesarC2.jsp?lenguaje=Java">Java</a>
    <a class="btn sec" href="ProcesarC2.jsp?lenguaje=C%2B%2B">C++</a>
    <a class="btn sec" href="ProcesarC2.jsp?lenguaje=Perl">Perl</a>
    <a class="btn sec" href="ProcesarC2.jsp">Sin selección</a>
  </div>
</div>
<a class="btn sec" href="Lenguaje.jsp">Volver</a>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>