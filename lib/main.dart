

import 'package:flutter/material.dart';
import 'package:todo_app/views/todo_add_task_view.dart';
import 'package:todo_app/views/todo_view.dart';

void main(){
  runApp(const TodoApp());
}


class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo App",
      home: TodoView(),
    );
  }
}




