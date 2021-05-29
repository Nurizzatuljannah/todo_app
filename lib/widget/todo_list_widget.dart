// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_todo_app_ui_from_scratch/provider/todos.dart';
import 'package:flutter_todo_app_ui_from_scratch/widget/todo_widget.dart';

class TodoListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodosProvider>(context);
    final todos = provider.todos;

    return todos.isEmpty
        ? Center(
            child: Text(
              'No todos.',
              style: TextStyle(fontSize: 20),
            ),
          )
        : ListView.separated(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(16),
            separatorBuilder: (context, index) => Container(height: 8),
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];

              return TodoWidget(todo: todo);
            },
          );
  }
}

// ignore: non_constant_identifier_names
Widget TodoWidget({todo}) {}

class Provider {
  static of(BuildContext context) {}
}
