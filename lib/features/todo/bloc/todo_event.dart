abstract class TodoEvent {}

class AddTodo extends TodoEvent {
  final String title;
  AddTodo(this.title);
}

class RemoveTodo extends TodoEvent {
  final int index;
  RemoveTodo(this.index);
}