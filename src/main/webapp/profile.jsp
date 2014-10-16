<%-- 
    Document   : index
    Created on : 09-oct-2014, 17:50:20
    Author     : Daniel
--%>
<%
    if(session.getAttribute("email")==null)
        response.sendRedirect("error.jsp");%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.iteso.sweng.Profile.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Profile || TANDERO</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap.min.css") %>'>
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap-theme.min.css") %>'>
</head>
<body>
<%String email = (String)session.getAttribute("email");%>
<%
    BDProfile a = new BDProfile();
    a.conectar();
    Profile b = a.getContact(email);
    a.desconectar();
%>
<% if(email!=null){%>
<h1>Your Profile</h1>
<p><strong>Nickname: </strong><span><% if(b.getNick()==null) out.println("<span style=\"color: #ff0000\">"); %><%=b.getNick()%></span></p>
<p><strong>Name: </strong><%=b.getName()%></p>
<p><strong>Last Name: </strong><%=b.getLastname()%></p>
<p><strong>E-mail: </strong><%=b.getEmail()%></p>
<p><strong>Address: </strong><span><% if(b.getAddress()==null) out.println("<span style=\"color: #ff0000\">"); %><%=b.getAddress()%></span></p>
<p><strong>Phone Home: </strong><span><% if(b.getPhome()==null) out.println("<span style=\"color: #ff0000\">"); %><%=b.getPhome()%></span></p>
<p></p><strong>Phone Office: </strong><span><% if(b.getPoffice()==null) out.println("<span style=\"color: #ff0000\">"); %><%=b.getPoffice()%></span></p>
<p><strong>Phone Mobile: </strong><span><% if(b.getPmobile()==null) out.println("<span style=\"color: #ff0000\">"); %><%=b.getPmobile()%></span></p>
<p><strong>Status Account: </strong><%
    if(b.isStatus())
    {
        out.println("<span style=\"color: #31B404\">");
        out.println("Verified");
    }
    else {
        out.println("<span style=\"color: #ff0000\">");
        out.println("No verified");
    }
%></p></span>
<form action="logout" method="post">
    <p><input type="submit" value="Log Out"></p>
</form>

<form action="faqmemberservlet" method="post">
    <input type="submit" class="btn btn-warning" value="Member´s FAQ" />
</form>

<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("jquery.min.js") %>'></script>
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("js/bootstrap.min.js") %>'></script>
</body>
</html>
<%}%>