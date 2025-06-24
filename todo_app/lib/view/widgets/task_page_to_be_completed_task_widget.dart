import 'package:flutter/material.dart';
import 'package:todo_app/view/custom_widgets/task_cards_custom_widget.dart';

class TaskPageToBeCompletedTaskWidget extends StatefulWidget {
  const TaskPageToBeCompletedTaskWidget({super.key});

  @override
  State<TaskPageToBeCompletedTaskWidget> createState() => _TaskPageToBeCompletedTaskWidgetState();
}
List<String> todo = ["Study Lesson", "Run 5k", "Go to market"];

class _TaskPageToBeCompletedTaskWidgetState extends State<TaskPageToBeCompletedTaskWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: SingleChildScrollView(
          child: ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: todo.length,
            itemBuilder: (context, index){
              return TaskCardsCustomWidget(title: todo[index],
              );
            }
          ),
        ),
      ),
    );
  }
}
