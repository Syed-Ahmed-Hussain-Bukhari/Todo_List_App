

import 'package:flutter/material.dart';

class MyFocusMode extends StatelessWidget {
  const MyFocusMode({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      home: Scaffold(
        backgroundColor: Colors.black,
        body:
        SingleChildScrollView(
          child:Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
              Center(
                child: Container(
                  child:Text("FocusMode",style: TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.bold)),
                ),
              ), 
               SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
               SizedBox(height: MediaQuery.sizeOf(context).height*0.2,),
               Center(
                child: Container(
                  child:Text("While your focus mode is on, all of you",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold)),
                ),
              ), 
              SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
              Center(
                child: Container(
                  child:Text("notifications will be off",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold)),
                ),
              ), 
              SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
              
              TextButton(onPressed: (){
                              }, 
          
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurpleAccent
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),
                          child: Text("Start Focusing",style: TextStyle(color: Colors.white,fontSize: 20)))
                        ),

              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
              Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        TextButton(onPressed: (){
                              }, 
          
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(9),
                          child: Text("Overview",style: TextStyle(color: Colors.white,fontSize: 20)))
                        ),
          
                        Container(
                          margin: EdgeInsets.only(right: 12),
                          child: TextButton(onPressed: (){
                                     }, 
                                  
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 62, 61, 61)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(9),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[ Text("This week",style: TextStyle(color: Colors.white,fontSize: 20)),
                              SizedBox(width: 12,),
                              Icon(Icons.arrow_downward_sharp,color: Colors.white,)
                              ]
                            ))
                          
                          ),
                        ),
                      ],),
                      SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                      SizedBox(
                      height:MediaQuery.sizeOf(context).height*0.32,
                      width: double.infinity,
                      child:Center(child: Image(image: AssetImage("assets/images/Sun.png"))),
                    ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                      children:[ Container(
                        padding: EdgeInsets.all(12),
                        child:Text("Applications",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold)),
                      ),
                      ]
                     ), 
                     SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),

                     Container(
                      margin: EdgeInsets.only(left: 12,right: 12),
                      child: Card(
                        color: Color.fromARGB(255, 43, 43, 43),
                        child: ListTile(
                                    leading:IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white,)),
                                    title: Text("Instagram",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w400),),
                                    subtitle:Text("you spent 4h on Instagram today",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w400),), 
                                    trailing: Icon(Icons.expand_circle_down_rounded,color: Colors.white,),
                                  ), 
                      ),
                     ),
                    SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                     Container(
                      margin: EdgeInsets.only(left: 12,right: 12),
                      child: Card(
                        color: Color.fromARGB(255, 43, 43, 43),
                        child: ListTile(
                                    leading:IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white,)),
                                    title: Text("Twitter",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w400),),
                                    subtitle:Text("you spent 3h on Instagram today",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w400),), 
                                    trailing: Icon(Icons.expand_circle_down_rounded,color: Colors.white,),
                                  ), 
                      ),
                     ),
                     SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                     Container(
                      margin: EdgeInsets.only(left: 12,right: 12),
                      child: Card(
                        color: Color.fromARGB(255, 43, 43, 43),
                        child: ListTile(
                                    leading:IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white,)),
                                    title: Text("Facebook",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w400),),
                                    subtitle:Text("you spent 1h on Instagram today",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w400),), 
                                    trailing: Icon(Icons.expand_circle_down_rounded,color: Colors.white,),
                                  ), 
                      ),
                     ),
                      SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                      Container(
                      margin: EdgeInsets.only(left: 12,right: 12),
                      child: Card(
                        color: Color.fromARGB(255, 43, 43, 43),
                        child: ListTile(
                                    leading:IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white,)),
                                    title: Text("Telegram",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w400),),
                                    subtitle:Text("you spent 45m on Instagram today",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w400),), 
                                    trailing: Icon(Icons.expand_circle_down_rounded,color: Colors.white,),
                                  ), 
                      ),
                     ),

                     SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                      Container(
                      margin: EdgeInsets.only(left: 12,right: 12),
                      child: Card(
                        color: Color.fromARGB(255, 43, 43, 43),
                        child: ListTile(
                                    leading:IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white,)),
                                    title: Text("Gmail",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w400),),
                                    subtitle:Text("you spent 30m on Instagram today",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w400),), 
                                    trailing: Icon(Icons.expand_circle_down_rounded,color: Colors.white,),
                                  ), 
                      ),
                     ),
                     SizedBox(height: MediaQuery.sizeOf(context).height*0.1,),

                     





               


              
            ],
          )
        )
      ),
    );
  }
}