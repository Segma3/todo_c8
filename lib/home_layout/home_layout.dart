import 'package:flutter/material.dart';
import 'package:todo_c8/screens/settings.dart';
import 'package:todo_c8/screens/tasks.dart';
import 'package:todo_c8/screens/widgets/add_task_bottom_sheet.dart';

class homeLayout extends StatefulWidget {
static const String routeName = 'homeLayout';

  @override
  State<homeLayout> createState() => _homeLayoutState();
}

class _homeLayoutState extends State<homeLayout> {
int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text('Todo App',),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconSize: 30,
          currentIndex: index,
          onTap: (value){
            index = value;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: ""),
          ],
        ),
      ),
      body: tabs[index],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.white,
            width: 3,
          )
        ),

        onPressed: () {
          showAddTaskSheet();
        },
        child: Icon(Icons.add,size: 30),
      ),
    );
  }
  List<Widget> tabs = [tasksTap(),settingsTap()];
  void showAddTaskSheet(){
    showModalBottomSheet(context: context,
        isScrollControlled:true,
        builder: (context) => Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: addTaskBottomSheet(),
        ));
  }
}
