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
<form action="loginServlet" method="post">
    <fieldset style="width: 300px">
        <legend> Login to App </legend>
        <table>
            <tr>
                <td>User ID</td>
                <td><input type="text" name="username" required="required" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="userpass" required="required" /></td>
            </tr>
            <tr>
                <td><input type="submit" class=" btn btn-danger" value="Login" /></td>
            </tr>
        </table>
    </fieldset>
</form>

<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("jquery.min.js") %>'></script>
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("js/bootstrap.min.js") %>'></script>

</body>
</html>