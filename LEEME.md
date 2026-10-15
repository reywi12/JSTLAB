# JSTL Lab — Ejercicios de la guía

Proyecto web (Tomcat 8.5 + JSTL 1.2). Contenido y nombres de página alineados con la guía
JSTL, con un diseño propio: tema oscuro, menú lateral, sin Bootstrap ni CDN, cabecera y pie
compartidos con `<%@ include %>` (WEB-INF/jspf).

## Cómo ejecutarlo
1. Copia `jstl-1.2.jar` en `WEB-INF/lib` (y en `lib` de Tomcat si tu IDE lo pide).
2. Despliega la carpeta como aplicación web (VS Code + Tomcat, o copia a `webapps/JSTLlab`).
3. Abre `http://localhost:8080/JSTLlab/index.jsp`.

Tomcat 10+: cambia las URI del taglib a `jakarta.tags.core` y usa el JAR Jakarta de JSTL.

## Páginas (según la guía)
| Ejercicio | Página(s) |
| --- | --- |
| 1. Primer Ejercicio | `Eje1.jsp` |
| 2. Datos | `Datos.jsp` → `ProcesarC.jsp` |
| 3. Uso del set | `set1.jsp` |
| 4. Datosif | `Datosif.jsp` → `Procesarif.jsp` |
| 5. Lenguaje | `Lenguaje.jsp` → `ProcesarC2.jsp` |
| 6. Catch | `catch.jsp` |
| 7. Foreach | `foreach.jsp` |
| 8. ForTokens | `ForTokens.jsp` → `ResultTokens.jsp` |
