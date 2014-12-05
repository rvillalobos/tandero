
<%@page contentType="text/html" pageEncoding="UTF-8"%>
		 
<%@page import="com.iteso.sweng.Tanda.*"%>
<%@page import="com.iteso.sweng.Profile.*"%>

<%
	String email = (String)session.getAttribute("email");
	//if(session.getAttribute("email")==null)
    //    response.sendRedirect("error.jsp");

	if(request.getParameter("tndOr")==null)
		response.sendRedirect("index2.jsp");

	BDProfile a = new BDProfile();
    a.conectar();
    Profile b = a.getContact(email);
    a.desconectar();
	
	int ui = Integer.parseInt(request.getParameter("tndOr"));
	DBtanda tandas=new DBtanda();
	tandas.conectar();
	
	iTanda tanda= tandas.getTanda(ui);


%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Administracion de usuarios de tanda <%out.print(tanda.name);%></title>
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap.min.css") %>'>
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap-theme.min.css") %>'>
</head>
<body>

<h1> Administracion de usuarios de tanda  <%out.print(tanda.name);%></h1>

<table >
<tr><td>Name</td><td></td> </tr>
<%
	
	tandas.loadTandaPartaker(ui);
	Profile u= tandas.getNextTandaPartaker();
	while(u!=null)
	{
		out.print("<tr><td>"+u.getName()+" "+u.getLastname()+"</td> <td><a href=\"kickPartaker.jsp?ti="+tanda.tandaId+"&ui="+u.getID()+"\">Kick</a></td> ");
		u= tandas.getNextTandaPartaker();
	}
	tandas.desconectar();
	//System.out.println("Peticion cumplida");
%>
</table >
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("jquery.min.js") %>'></script>
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("js/bootstrap.min.js") %>'></script>
</body>

</html>
