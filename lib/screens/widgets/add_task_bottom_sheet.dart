import 'package:flutter/material.dart';
import 'package:todo_c8/models/task_model.dart';
import 'package:todo_c8/shared/networks/firebase/firebase_functions.dart';

class addTaskBottomSheet extends StatefulWidget {
  @override
  State<addTaskBottomSheet> createState() => _addTaskBottomSheetState();
}

class _addTaskBottomSheetState extends State<addTaskBottomSheet> {
  var formKey = GlobalKey<FormState>();
  var selected = DateUtils.dateOnly(DateTime.now());
  var titleController = TextEditingController();
  var descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('add new task',style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.black),textAlign: TextAlign.center,),
            SizedBox(height: 25,),
            TextFormField(
              controller: titleController,
              validator: (value) {
                if (value==null||value.isEmpty){
                  return "please enter task title !";
                }
                else if (value.length<10){
                  return "please enter more than 10 characters";
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                label: Text('Text Title'),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
            SizedBox(height: 15,),
            TextFormField(
              controller: descriptionController,
              validator: (value) {
                if (value==null||value.isEmpty){
                  return "please enter task description !";
                }
                return null;
              },
              maxLines: 3,
              decoration: InputDecoration(
                label: Text('Text Description'),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
            SizedBox(height: 25,),
            Container(
                width: double.infinity,
                child: Text('Select Data',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color:Colors.black, fontSize: 20),textAlign: TextAlign.start,)),
            SizedBox(height: 15,),
            InkWell(
              onTap: () {
                chooseDate();
              },
                child: Text(selected.toString().substring(0,10),style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,)),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: () {
              if(formKey.currentState!.validate()){
                TaskModel task = TaskModel(
                    title: titleController.text,
                    description: descriptionController.text,
                    date: selected.millisecondsSinceEpoch,
                    status: false);
                FirebaseFunctions.addTaskToFirestore(task).then((value) {
                  Navigator.pop(context);
                });
              }
              },
                child: Text('Add Task')),
          ],
        ),
      ),
    );
  }
  void chooseDate ()async{
    DateTime? selectedDate =await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
    if (selectedDate!=null){
      selected=DateUtils.dateOnly(selectedDate);
      setState(() {

      });
    }
  }
}
