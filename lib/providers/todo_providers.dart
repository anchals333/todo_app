import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rs_test/models/todo_model.dart';

part 'todo_providers.g.dart';

List<TodoModel> todoList = [];

@riverpod
void addTodo(AddTodoRef ref, {required TodoModel model}) {
  List<TodoModel> todoList = ref.watch(getTodoListProvider);
  todoList.add(model);
}

@riverpod
List<TodoModel> getTodoList(GetTodoListRef ref) {
  return todoList;
}

@riverpod
void removeTodo(RemoveTodoRef ref, {required TodoModel model}) {
  List<TodoModel> todoList = ref.watch(getTodoListProvider);
  todoList.remove(model);
}

@riverpod
void editTodo(EditTodoRef ref, {required int index, required TodoModel model}) {
  List<TodoModel> todoList = ref.watch(getTodoListProvider);
  TodoModel todoModel = todoList[index];
  todoModel.title = model.title;
  todoModel.description = model.description;
}
