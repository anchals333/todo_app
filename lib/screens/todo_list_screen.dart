import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rs_test/models/todo_model.dart';
import 'package:rs_test/providers/todo_providers.dart';
import 'package:rs_test/screens/add_todo_list.dart';

@riverpod
class TodoListScreen extends ConsumerWidget {
  TodoListScreen({super.key});

  final refreshKey = GlobalKey<RefreshIndicatorState>();

  late WidgetRef ref;
  late BuildContext context;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    this.ref = ref;
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTodoScreen();
        },
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        key: refreshKey,
        onRefresh: () async {
          // Invalidate the provider and reload the data
          ref.invalidate(getTodoListProvider);
          return await ref.read(getTodoListProvider);
        },
        child: showTodoList(),
      ),
    );
  }

  Widget showTodoList() {
    final todoList = ref.watch(getTodoListProvider);
    if (todoList.isEmpty) {
      return const Center(child: Text("Add your first todo!"));
    }
    return ListView.builder(
      itemCount: todoList.length,
      padding: const EdgeInsets.all(20),
      itemBuilder: (_, index) {
        TodoModel model = todoList[index];
        return ListTile(
          onTap: () {
            addTodoScreen(index: index);
          },
          leading: Text("${index + 1}"),
          title: Text(model.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: Text(model.description,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
          trailing: GestureDetector(
            onTap: () {
              // Remove the todo item and call refresh
              ref.read(removeTodoProvider(model: model));
              refreshKey.currentState?.show();
            },
            child: const Icon(Icons.delete),
          ),
        );
      },
    );
  }

  Future<void> addTodoScreen({int? index}) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddTodoList(
          index: index,
        ),
      ),
    );
    if (result != null && result) {
      // Call refresh after adding a new todo
      refreshKey.currentState?.show();
    }
  }
}