import 'package:flutter/material.dart';
import 'package:todo_c8/my_themes.dart';

class taskItem extends StatelessWidget {
  const taskItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            height: 100,
            width: 5,
            margin: EdgeInsets.only(left: 30),
            color: MyThemeData.lightColor,
          ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('task title',style: Theme.of(context).textTheme.bodyMedium,),
                  Text('task description',style: Theme.of(context).textTheme.bodySmall,),
                ],
              ),
            ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 16),
            padding: EdgeInsets.symmetric(vertical: 3,horizontal: 18),
            decoration: BoxDecoration(
              color: MyThemeData.lightColor,
              borderRadius: BorderRadius.circular(12),

            ),
              child: Icon(Icons.done,color: Colors.white,size: 30,)),
        ],
      ),
    );
  }
}
