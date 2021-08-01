<%@ include file = "../common/header.jsp" %>
<%@include file="../common/navigation.jsp"%>>

<body>

<div class="container">
    <p style="color: red">${errorMessage}</p>
    <form action="/login.do" method="post">
        Name:
        <input type="text" name="name"/>
        Password:
        <input type="password" name="password"/>
        <input type="submit" value="Login">
    </form>
</div>

<%@include file="../common/footer.jsp"%>

