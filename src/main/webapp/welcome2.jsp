<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 15/10/2014
  Time: 10:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.iteso.sweng.Profile.BDProfile" %>
<%@ page import="com.iteso.sweng.Profile.Profile" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Welcome to Tandero.com</title>
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap.min.css") %>'>
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap-theme.min.css") %>'>
</head>
<body>
<%

    String email = (String)session.getAttribute("email");
    BDProfile a = new BDProfile();
    a.conectar();
    Profile b = a.getContact(email);
    a.desconectar();

%>
<% if(email!=null){%>

<h1> Welcome to tandero <%=b.getName()%></h1>

<%}%>
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("jquery.min.js") %>'></script>
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("js/bootstrap.min.js") %>'></script>
</body>

</html>

