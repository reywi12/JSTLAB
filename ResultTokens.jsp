<% request.setCharacterEncoding("UTF-8"); %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Your Tokens"/><c:set var="activo" value="e8"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h2>Your Tokens</h2>
<p class="sub">Resultado de <code>&lt;c:forTokens&gt;</code> con los datos enviados desde <code>ForTokens.jsp</code>.</p>
<div class="card">
  <h3>Tokens encontrados</h3>
  <c:choose>
    <c:when test="${empty param.delimText or empty param.delim}">
      <div class="aviso error">No se recibieron texto y delimitador. <a href="ForTokens.jsp">Ir al formulario</a>.</div>
    </c:when>
    <c:otherwise>
      <c:forTokens items="${param.delimText}" delims="${param.delim}" var="myToken" varStatus="st">
        <span class="chip"><c:out value="${st.count}"/>: <c:out value="${myToken}"/></span>
      </c:forTokens>
    </c:otherwise>
  </c:choose>
</div>
<a class="btn sec" href="ForTokens.jsp">Regresar</a>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>