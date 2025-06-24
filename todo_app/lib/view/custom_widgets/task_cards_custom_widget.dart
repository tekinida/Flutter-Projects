import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app/constants/color.dart';

class TaskCardsCustomWidget extends StatefulWidget {
  const TaskCardsCustomWidget({super.key, required this.title});
  final String title;

  @override
  State<TaskCardsCustomWidget> createState() => _TaskCardsCustomWidgetState();
}

class _TaskCardsCustomWidgetState extends State<TaskCardsCustomWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: HexColor(card_backgroundColor),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.notes, size: 50),
            Text(
              widget.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            Checkbox(value: isChecked, onChanged: (val) => {
              setState(() {
                isChecked = val!;
              })
            })
          ],
        ),
      ),
    );
  }
}