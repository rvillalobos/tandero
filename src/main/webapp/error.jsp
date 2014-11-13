<%-- 
    Document   : error
    Created on : 11-oct-2014, 19:12:39
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap.min.css") %>'>
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap-theme.min.css") %>'>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>ERROR || Tandero</title>
</head>
<body>

<h1>Denied Access</h1>

<form action="index.jsp" method="post" target="_top">
    <button type="input" class="btn-group-lg btn-success">Go Home</button>
</form>

<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("jquery.min.js") %>'></script>
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("js/bootstrap.min.js") %>'></script>

</body>
</html>
