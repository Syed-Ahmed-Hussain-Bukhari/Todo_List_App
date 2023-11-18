import 'package:flutter/material.dart';
import 'package:todo_list_app/calender_page.dart';
import 'package:todo_list_app/focus_mode.dart';
import 'package:todo_list_app/index_page.dart';
import 'package:todo_list_app/intro_page.dart';
import 'package:todo_list_app/profile_page.dart';
import 'package:todo_list_app/setting_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(103, 58, 183, 1)),
        useMaterial3: true,
      ),
      home: SplashPage(),
    );
  }
}

