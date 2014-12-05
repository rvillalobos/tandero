<%@ page import="com.iteso.sweng.Tanda.Tanda" %>
<%@ page import="com.iteso.sweng.Tanda.Display.MyTandas" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: Arturo Cabrera
  Date: 12/3/2014
  Time: 1:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%
    if(session.getAttribute("email")==null)
        response.sendRedirect("error.jsp");

%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Tandas || TANDERO</title>
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

<%for(int i=0; i<t.size(); i++){%>
    <p>
        <table border="2">
            <tr>
                <td>
                    Name: <%= t.get(i).getName()%><br>
                    Amount: $<%= t.get(i).getMonto()%><br>
                    Status <%= t.get(i).getState()%>
                    <br>
                    <div class="btn-group">
                        <form action="TandaDetail.jsp" method="post" target="main">
                            <button type="submit" class="btn btn-success">check tanda</button>
                        </form>
                    </div>
                </td>
            </tr>
        </table>
    </p>
<%}%>

</body>
</html>
