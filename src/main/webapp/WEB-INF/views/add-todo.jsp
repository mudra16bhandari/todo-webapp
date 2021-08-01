<%@ include file = "../common/header.jsp" %>
<%@include file="../common/navigation.jsp"%>

<body>


<div class="container">
    Add a new Todo!
    <p>
        <font color="red">${errorMessage}</font>
    </p>
    <form action="/add-todo.do" method="POST">
        <fieldset class="form-group">
        <label>Description </label>
            <input class="form-control" type="text" name="todo"/> <br/>
        </fieldset>
        <fieldset class="form-group">
            <label>Category </label>
            <input class="form-control" type="text" name="category"> <br/>
        </fieldset>
        <input class="btn btn-success" type="submit" value="Add Todo"/>
    </form>
</div>

<%@include file="../common/footer.jsp"%>