import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_c8/models/task_model.dart';
import 'package:todo_c8/my_themes.dart';
import 'package:todo_c8/screens/widgets/task_item.dart';
import 'package:todo_c8/shared/networks/firebase/firebase_functions.dart';

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
        StreamBuilder(
            stream: FirebaseFunctions.getTasksFromFireStore(date),
            builder: (context, snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting){
                return Center(child: CircularProgressIndicator());
              }
              if(snapshot.hasError){
                Column(
                  children: [
                    Text('something went wrong'),
                    ElevatedButton(onPressed: () {}, child: Text('try again')),
                  ],
                );
              }
              List<TaskModel>tasks =
                  snapshot.data?.docs.map((e) => e.data()).toList()??[];

              return Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return TaskItem(tasks[index]);
                },itemCount: tasks.length,),
              );
            },)
      ],
    );
  }
}
