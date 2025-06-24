import 'package:flutter/material.dart';
import 'package:todo_app/view/custom_widgets/task_cards_custom_widget.dart';

class TaskPageCompletedTaskWidget extends StatefulWidget {
  const TaskPageCompletedTaskWidget({super.key});

  @override
  State<TaskPageCompletedTaskWidget> createState() => _TaskPageCompletedTaskWidgetState();
}
List<String> completed = ["Game meetup", "Take out trash"];

class _TaskPageCompletedTaskWidgetState extends State<TaskPageCompletedTaskWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Completed",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 12),
              ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: completed.length, 
                itemBuilder: (context, index) {
                  return TaskCardsCustomWidget(title: completed[index]); 
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
