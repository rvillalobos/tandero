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
<h3>$Name_of_tanda</h3>
<table>
    <tr>
        <td> Status</td><td>$state<img src=""></td>
    </tr>
    <tr>
        <td>Organizer</td>
        <td>$organier</td>
    </tr>
    <tr>
        <td>Amount</td><td> $amount</td>
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
