package todo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/todo.do")
public class TodoServlet extends HttpServlet{

    private final TodoService todoService = new TodoService();

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        request.getSession().setAttribute("todos",todoService.retrieveTodos());
        request.getRequestDispatcher("WEB-INF/views/todo.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        String newTodo = request.getParameter("todo");
        todoService.addTodo(new Todo(newTodo));

        response.sendRedirect("/todo.do");
        }
}