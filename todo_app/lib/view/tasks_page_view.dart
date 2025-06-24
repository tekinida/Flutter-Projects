import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app/constants/color.dart';
import 'package:todo_app/view/widgets/task_page_adding_new_task_buton_widget.dart';
import 'package:todo_app/view/widgets/task_page_completed_task_widget.dart';
import 'package:todo_app/view/widgets/task_page_to_be_completed_task_widget.dart';
import 'package:todo_app/view/widgets/task_page_header_widget.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(backgroundColor),
      body: const Column(
        children: [
          TaskPageHeaderWidget(),
          TaskPageToBeCompletedTaskWidget(),
          TaskPageCompletedTaskWidget(),
          TaskPageAddingNewTaskButonWidget(),
        ],
      )
    );
  }
}