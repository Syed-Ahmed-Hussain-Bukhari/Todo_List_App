

import 'package:flutter/material.dart';
import 'package:todo_list_app/calender_page.dart';
import 'package:todo_list_app/focus_mode.dart';
import 'package:todo_list_app/index_page.dart';
import 'package:todo_list_app/profile_page.dart';

class   BottomNaviagtionBarPage extends StatefulWidget {
  const BottomNaviagtionBarPage({super.key});

  @override
  State<BottomNaviagtionBarPage> createState() => _BottomNaviagtionBarPage();
}

class _BottomNaviagtionBarPage extends State<BottomNaviagtionBarPage> {
   
   int selectedtab=0;
   List pages=[
    Center(
      child: MyIndexPage(),
    ),

    Center(
      child: MyCalenderPage(),
    ),

    Center(
      child: MyFocusMode(),
    ),

    Center(
      child: MyProfilePage(),
    ),
   ];

   chnageTab(int index){
    setState(() {
      selectedtab=index;
    });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                 body :pages[selectedtab],
                 bottomNavigationBar: BottomNavigationBar(
                  
                  currentIndex: selectedtab,
                  onTap: (index) => chnageTab(index) ,
                  fixedColor: Colors.white,
                 
                  items: [
                  
                  BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.white,),
                  label: "Index",backgroundColor: Color.fromARGB(255, 29, 29, 29)),
                  BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined,color: Colors.white,),
                  label: "Calender",backgroundColor: Color.fromARGB(255, 29, 29, 29)),
                  BottomNavigationBarItem(icon: Icon(Icons.alarm,color: Colors.white,),
                  label: "Focuse",backgroundColor: Color.fromARGB(255, 29, 29, 29)),
                  BottomNavigationBarItem(icon: Icon(Icons.person_outline,color: Colors.white,),
                  label: "Profile",backgroundColor: Color.fromARGB(255, 29, 29, 29))
                 ],
                 
                 
                 ),
                 floatingActionButton: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: (){}
                 ),
                 floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
                 

    );
              
  }
}