<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 16/10/14
  Time: 04:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%-- Este formulario debe ser post, porque queremos hacer un post :) --%>
<form id="formredirect" method="POST" action="../RedirServlet">
    <%-- Colocamos todos los parametros que queremos envir en el post, por consiguiente deberían
         ser todos los parámetros que enviamos en el modelo --%>
    <input type="hidden" name="texto" value="${texto}" />
</form>
<script type="text/javascript">
    <%-- Utilizando Javascript enviamos el formulario --%>
    document.getElementById("formredirect").submit()
</script>
</body>
</html>
