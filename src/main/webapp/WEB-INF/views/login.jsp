<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Todo WebApp</title>
</head>
<body>
<p style="color: red">${errorMessage}</p>
<form action="/login.do" method="post">
    Name:
    <input type="text" name="name"/>
    Password:
    <input type="password" name="password"/>
    <input type="submit" value="Login">
</form>
</body>
<html>

