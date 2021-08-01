<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Todos</title>
</head>
<body>
<p>Welcome ${name}</p>
<p>Your todos are: </p>
<ol>
    <c:forEach items="${todos}" var="todo">
        <li>${todo.name} &nbsp; &nbsp; <a href="/delete-todo.do?todo=${todo.name}">Delete</a>
        </li>

    </c:forEach>
</ol>
<form action="/todo.do" method="post">
    <input type="text" name="todo"/> <input type="submit" value="Add"/>
</form>
</body>
</html>
