<%@ page import="com.iteso.sweng.Tanda.Tanda" %>
<%@ page import="com.iteso.sweng.Tanda.Display.MyTandas" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: Arturo Cabrera
  Date: 12/4/2014
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>

<%
    if(session.getAttribute("email")==null)
        response.sendRedirect("error.jsp");

%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<html>
<head>
    <title>Tandas || TANDERO</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap.min.css") %>'>
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap-theme.min.css") %>'>
</head>
<body>

<%String email = (String)session.getAttribute("email");%>
<%
    MyTandas m = new com.iteso.sweng.Tanda.Display.MyTandas();
    m.conectar();
    ArrayList<Tanda> t=m.getTandas(email);
    m.desconectar();
%>

<%String i=request.getParameter("tanda");%>
<%Tanda tanda = t.get(Integer.parseInt(i));%>

<h3><%= tanda.getName()%></h3>
<table>
    <tr>
        <td> Status</td>
        <td>
            <% int status = tanda.getState();%>
            <%String statusLine= (status==0)?"Open":
                    (status==1)?"In Progress": "Dead";
            %>
            <%=statusLine%>
            <img src=""></td>
    </tr>
    <tr>
        <td>Organizer</td>
        <td><%= tanda.getOrganizer().getName()%></td>
    </tr>
    <tr>
        <td>Amount</td><td> $<%=tanda.getMonto()%></td>
    </tr>
</table>
<table>
    <tr>
        <td colspan="2"><b>Partakers</b></td>
    </tr>
    <!-- loop here-->
    <tr>
        <td>
            person one
        </td></tr>
    <!--end of loop-->
</table>

</body>
</html>
