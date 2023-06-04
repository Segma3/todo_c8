import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_c8/my_themes.dart';
import 'package:todo_c8/screens/widgets/task_item.dart';

class tasksTap extends StatefulWidget {
  const tasksTap({Key? key}) : super(key: key);

  @override
  State<tasksTap> createState() => _tasksTapState();
}

class _tasksTapState extends State<tasksTap> {
  DateTime date=DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DatePicker(
          DateTime.now(),
          height: 100,
          initialSelectedDate: DateTime.now(),
          selectionColor: MyThemeData.lightColor,
          selectedTextColor: Colors.white,
          onDateChange: (newDate) {
            // New date selected
            setState(() {
              date = newDate;
            });
          },
        ),
        Expanded(child: ListView.builder(itemBuilder: (context,index){
          return taskItem();
        },itemCount: 10,))
      ],
    );
  }
}
