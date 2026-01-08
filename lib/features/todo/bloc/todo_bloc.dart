import 'package:flutter_bloc/flutter_bloc.dart';
import 'todo_event.dart';
import 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState([])) {
    on<AddTodo>((event, emit) {
      final updatedList = List<String>.from(state.todos)
        ..add(event.title);
      emit(TodoState(updatedList));
    });

    on<RemoveTodo>((event, emit) {
      final updatedList = List<String>.from(state.todos)
        ..removeAt(event.index);
      emit(TodoState(updatedList));
    });
  }
}