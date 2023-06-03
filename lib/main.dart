import 'package:flutter/material.dart';
import 'package:todo_c8/home_layout/home_layout.dart';

import 'my_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:homeLayout.routeName ,
      routes: {
        homeLayout.routeName:(context) => homeLayout(),

      },
      theme:MyThemeData.lightTheme ,
      // darkTheme:MyThemeData.darkTheme ,
      themeMode:ThemeMode.light ,
      debugShowCheckedModeBanner: false,
    );
  }
}
