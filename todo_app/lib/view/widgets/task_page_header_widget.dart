import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app/constants/color.dart';
import 'package:intl/intl.dart';

class TaskPageHeaderWidget extends StatelessWidget {
  const TaskPageHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    String formattedDate = DateFormat('EEEE, d MMMM').format(DateTime.now());
    return SafeArea(
      child: Container(
          color: HexColor(header_backgroundColor),
          width: deviceWidth,
          height: deviceHeight / 3, //total height over 3 of the device used
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  formattedDate,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "My Todo List",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
        ),
      ),
    );
  }
}
