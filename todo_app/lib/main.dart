import 'package:flutter/material.dart';
import 'package:todo_app/view/tasks_page_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Todo List',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: TodoListView(),
      ),
    );
  }
}