<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<html>
<head>
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap.min.css") %>'>
    <link rel='stylesheet' href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap-theme.min.css") %>'>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login Application</title>
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

<form action="profileServlet" method="post">
    <fieldset style="width: 300px">
        <legend> Login to App </legend>
        <table>
            <tr>
                <td>User Email</td>
                <td><input type="text" name="email" required="required" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" required="required" /></td>
            </tr>
            <tr>
                <td><input type="submit" class=" btn btn-danger" value="Login" /></td>
            </tr>
        </table>
    </fieldset>
</form>

<form action="faqservlet" method="post">
    <input type="submit" class="btn btn-warning" value="FAQ" />
</form>
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("jquery.min.js") %>'></script>
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("js/bootstrap.min.js") %>'></script>

</body>
</html>