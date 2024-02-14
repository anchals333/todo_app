import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rs_test/models/todo_model.dart';
import 'package:rs_test/providers/todo_providers.dart';

@riverpod
class AddTodoList extends HookConsumerWidget {
  int? index;

  AddTodoList({super.key, this.index});

  final formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: Form(key: formKey, child: addTodoForm(context, ref)),
    );
  }

  Widget addTodoForm(BuildContext context, WidgetRef ref) {
    if (index != null) {
      final TodoModel model = ref.watch(getTodoListProvider)[index!];
      titleController.text = model.title;
      descriptionController.text = model.description;
    }
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(children: [
        TextFormField(
          controller: titleController,
          decoration: const InputDecoration(
            labelText: 'Title',
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter title for todo!';
            }
            return null;
          },
        ),
        TextFormField(
          controller: descriptionController,
          decoration: const InputDecoration(
            labelText: 'Description',
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter description for todo!';
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                if (index != null) {
                  editTodo(context, ref);
                } else {
                  saveTodo(context, ref);
                }
              }
            },
            child:  Text(index == null ? "Save Todo" : "Update Todo"))
      ]),
    );
  }

  void saveTodo(BuildContext context, WidgetRef ref) {
    final TodoModel model = TodoModel(
        title: titleController.text, description: descriptionController.text);
    ref.read(addTodoProvider(model: model));
    Navigator.pop(context, true);
    // Navigator.pop(context);
  }

  void editTodo(BuildContext context, WidgetRef ref) {
    TodoModel model = TodoModel(
        title: titleController.text, description: descriptionController.text);
    ref.read(editTodoProvider(index: index!, model: model));
    Navigator.pop(context, true);
    // Navigator.pop(context);
  }
}
