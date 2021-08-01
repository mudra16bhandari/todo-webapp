package todo;

import todo.Todo;

import java.util.ArrayList;
import java.util.List;

public class TodoService {
    private  static List<Todo> todos = new ArrayList<Todo>();
    static {
        todos.add(new Todo("Learn Web Application Development"));
        todos.add(new Todo("Complete Chat Functionality"));
        todos.add(new Todo("Practice DSA questions"));
    }
    public List<Todo> retrieveTodos(){
        return todos;
    }
    public void addTodo(Todo todo){
        todos.add(todo);
    }
    public void deleteTodo(Todo todo){
        todos.remove(todo);
    }
}
