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
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="btn-group btn-group-lg">

            <div class="btn-group">
                <form action="loginServlet" method="post">
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
                <form action="loginrservlet" method="post">
                    <button type="input" class="btn btn-success">LogIn</button>

                </form>
            </div>
        </div>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<h1>Acceso Denegado</h1>

<form action="loginServlet" method="post">
    <button type="input" class="btn-group-lg btn-success">GO TO LOGIN PAGE</button>
<form action="index.jsp" method="post" target="_top">
    <button type="input" class="btn-group-lg btn-success">Go Home</button>
</form>

<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("jquery.min.js") %>'></script>
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("js/bootstrap.min.js") %>'></script>

</body>
</html>
