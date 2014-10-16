<%--
  Created by IntelliJ IDEA.
  User: Alejandro
  Date: 15/10/2014
  Time: 10:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Welcome <%=session.getAttribute("name")%></title>
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap.min.css") %>'>
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap-theme.min.css") %>'>
</head>
<body>


<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="btn-group btn-group-lg">

            <div class="btn-group">
                <form action="welcomeServlet" method="post">
                    <button type="submit" class="btn btn-success">Home</button>

                </form>
            </div>

            <div class="btn-group">
                <form action="faqservlet" method="post">
                    <button type="input" class="btn btn-success">Faq</button>

                </form>
            </div>
            <div class="btn-group">
                <form action="profileServlet" method="post">
                    <button type="submit" class="btn btn-success">Profile</button>

                </form>
            </div>
            <div class="btn-group">
                <form action="loginServlet" method="post">
                    <button type="input" class="btn btn-success">LogIn</button>
                </form>
            </div>
        </div>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<h1> Welcome to tandero </h1>

<form action="loginServlet" method="post">
    <button type="input" class="btn-group-lg btn-success">GO TO LOGIN PAGE</button>
</form>

<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("jquery.min.js") %>'></script>
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("js/bootstrap.min.js") %>'></script>
</body>

</html>

