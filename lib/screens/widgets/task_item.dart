import 'package:flutter/material.dart';
import 'package:todo_c8/models/task_model.dart';
import 'package:todo_c8/my_themes.dart';

class TaskItem extends StatelessWidget {
TaskModel task;
TaskItem(this.task);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Card(
        elevation: 12,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.transparent,
          )
        ),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 5,
              margin: EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                color:task.status?MyThemeData.greenColor:MyThemeData.lightColor,
              ),
            ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(task.title,style: Theme.of(context).textTheme.bodyMedium!
                        .copyWith(color:task.status?MyThemeData.greenColor:MyThemeData.lightColor),),
                    Text(task.description,style: Theme.of(context).textTheme.bodySmall,),
                  ],
                ),
              ),
            Spacer(),
            task.status?
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text('Done!',style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: MyThemeData.greenColor),),
                )
            :Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(vertical: 3,horizontal: 18),
              decoration: BoxDecoration(
                color: MyThemeData.lightColor,
                borderRadius: BorderRadius.circular(12),

              ),
                child: Icon(Icons.done,color: Colors.white,size: 30,)),
          ],
        ),
      ),
    );
  }
}
