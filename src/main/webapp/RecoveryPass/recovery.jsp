<%-- 
    Document   : error
    Created on : 11-oct-2014, 19:12:39
    Author     : Daniel
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap.min.css") %>'>
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap-theme.min.css") %>'>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Recovery Password || Tandero</title>
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

<p>Do you forget your password?</p>
<p>We will sent you a mail yo tour E-mail for recovery your password.</p>
<p></p>
<p style="color: #ff0000">${sessionScope['error']}</p>
<form action="GenerateServlet" method="post">
    <p>
        <label>E-mail: </label>
        <input type="text" name="rEmail" id="rEmail">
    </p>
    <p>
        <input type="submit" name="submit" id="submit" value="Recovery">
    </p>
</form>
<p style="color: #31B404">${sessionScope['ok']}</p>


<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("jquery.min.js") %>'></script>
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("js/bootstrap.min.js") %>'></script>
</body>
</html>
