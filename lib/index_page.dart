

import 'package:flutter/material.dart';

class MyIndexPage extends StatelessWidget {
  const MyIndexPage({super.key});

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
                  child:Text("Index",style: TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.bold)),
                ),
              ), 
            ]
          )
      ),
      )
      
    );
  }
}