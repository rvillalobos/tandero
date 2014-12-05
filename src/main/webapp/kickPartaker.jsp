
<%@page contentType="text/html" pageEncoding="UTF-8"%>
		 
<%@page import="com.iteso.sweng.Tanda.*"%>
<%@page import="com.iteso.sweng.Profile.*"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>PRocesing</title>
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap.min.css") %>'>
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap-theme.min.css") %>'>
</head>
<body>

<h1> procesando peticion </h1>


<%String email = (String)session.getAttribute("email");%>
<%



if(request.getParameter("ui")==null || request.getParameter("ti")==null)
	response.sendRedirect("tandalist.jsp");

BDProfile a = new BDProfile();
    a.conectar();
    Profile b = a.getContact(email);
    a.desconectar();
	
int ui = Integer.parseInt(request.getParameter("ui"));
int ti = Integer.parseInt(request.getParameter("ti"));



DBtanda tandas=new DBtanda();
tandas.conectar();
	tandas.kickPartaker(ui,ti);
tandas.desconectar();
System.out.println("Peticion cumplida");
response.sendRedirect("tandaPartaker.jsp?tndOr="+ti);

%>

<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("jquery.min.js") %>'></script>
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("js/bootstrap.min.js") %>'></script>
</body>

</html>