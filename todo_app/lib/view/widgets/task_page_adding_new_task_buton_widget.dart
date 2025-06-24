import 'package:flutter/material.dart';

class TaskPageAddingNewTaskButonWidget extends StatefulWidget {
  const TaskPageAddingNewTaskButonWidget({super.key});

  @override
  State<TaskPageAddingNewTaskButonWidget> createState() =>
      _TaskPageAddingNewTaskButonWidgetState();
}

class _TaskPageAddingNewTaskButonWidgetState
    extends State<TaskPageAddingNewTaskButonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.white,
            ),
            child: const Text(
              "Add new task",
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
