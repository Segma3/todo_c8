import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_c8/models/task_model.dart';
import 'package:todo_c8/my_themes.dart';
import 'package:todo_c8/shared/networks/firebase/firebase_functions.dart';

class TaskItem extends StatelessWidget {
TaskModel task;
TaskItem(this.task);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(motion: StretchMotion(), children:[
        // A SlidableAction can have an icon and/or a label.
        SlidableAction(
          onPressed: (context) {
            FirebaseFunctions.deleteTask(task.id);
          },
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          icon: Icons.delete,
          autoClose: true,
          label: 'Delete',
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
        ),
        SlidableAction(
          onPressed: (context) {

          },
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          icon: Icons.update,
          label: 'update',
        ),
      ], ),
      child: Padding(
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
              :InkWell(
                onTap: (){
                  task.status=true;
                  FirebaseFunctions.updateTask(task.id, task);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 16),
                  padding: EdgeInsets.symmetric(vertical: 3,horizontal: 18),
                  decoration: BoxDecoration(
                    color: MyThemeData.lightColor,
                    borderRadius: BorderRadius.circular(12),

                  ),
                    child: Icon(Icons.done,color: Colors.white,size: 30,)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
