import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_c8/home_layout/home_layout.dart';

import 'firebase_options.dart';
import 'my_themes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
