
import 'package:flutter/material.dart';

class MyCalenderPage extends StatelessWidget {
  const MyCalenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      home: Scaffold(
        backgroundColor: Colors.black,

        body: SingleChildScrollView(
          child:Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
              Center(
                child: Container(
                  child:Text("Calender",style: TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.bold)),
                ),
              ), 
            ]
          )
      ),
      )
      
    );
  }
}