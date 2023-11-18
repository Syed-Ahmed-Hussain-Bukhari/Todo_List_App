

import 'package:flutter/material.dart';
import 'package:todo_list_app/Bottom_navigator_bar_page.dart';

class MyIndexPage extends StatelessWidget {
  const MyIndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      home: Scaffold(
        backgroundColor: Colors.black,
        
        appBar: AppBar(
          
          title: Text("Index",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
          centerTitle: true,
          leading: Icon(Icons.wifi,color: Colors.white,),
          backgroundColor: Colors.black,
          actions: [
            CircleAvatar(backgroundImage:AssetImage("assets/images/f1.jpg"),),
           SizedBox(width: 12,),
          ],
        ),
        body: SingleChildScrollView(
          child:Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
               Container(child: Image(image: AssetImage("assets/images/page1.png")),),
               SizedBox(height: MediaQuery.sizeOf(context).height*0.1,),
               Container(child: Text("What do you want to do today?",style: TextStyle(color: Colors.white,fontSize: 22,)),),
               Container(child: Text("Tap+ to add your tabs",style: TextStyle(color: Colors.white,fontSize: 20)),)

            ]
          )
      ),
      )
      
    );
  }
}

class MyKeyboradOption extends StatefulWidget {
  const MyKeyboradOption({super.key});

  @override
  State<MyKeyboradOption> createState() => _MyKeyboradOptionState();
}

class _MyKeyboradOptionState extends State<MyKeyboradOption> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          
          title: Text("Index",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
          centerTitle: true,
          leading: Icon(Icons.wifi,color: Colors.white,),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          
          actions: [
            CircleAvatar(backgroundImage:AssetImage("assets/images/f1.jpg",),
            backgroundColor: const Color.fromARGB(255, 91, 88, 88),),
           SizedBox(width: 12,),
          ],
        ),
        body: SingleChildScrollView(
          child:Center(
            child: Column(
          
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    height: 400,
                    width: double.infinity,
                    child: Card(
                      elevation: 34,
                    color: Color.fromARGB(255, 41, 41, 41),
                    child: Column(children: [
                      SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                      Row(
                        children:[ Container(
                          padding: EdgeInsets.all(15),
                          child: Text("Add Task",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
                         ),
                        ]
                        
                      ),
                     Container(
                      margin: EdgeInsets.only(left:15,),
                      padding: EdgeInsets.only(right:17,top:5),
                      child: TextField(
                        cursorColor: Colors.grey,
                        style: TextStyle(color: Colors.white,fontSize: 22),
                        decoration: InputDecoration(
                        enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 61, 60, 60),
                              width: 3,
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 231, 226, 226),
                              width: 3,
                            )
                          ),
                         hintText: "Enter your Task",
                         hintStyle: TextStyle(color: Colors.grey,fontSize: 26)
                        ),
                      ),
                    ),
                     
                     SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                    Container(
                      margin: EdgeInsets.only(left:15,),
                      padding: EdgeInsets.only(right:17,top:5),
                      child: TextField(
                        cursorColor: Colors.grey,
                        style: TextStyle(color: Colors.white,fontSize: 22),
                        decoration: InputDecoration(
                        enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 61, 60, 60),
                              width: 3,
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 231, 226, 226),
                              width: 3,
                            )
                          ),
                         hintText: "Description",
                         hintStyle: TextStyle(color: Colors.grey,fontSize: 26)
                        ),
                      ),
                    ),
                     SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                        margin: EdgeInsets.only(left: 18),
                        child:Icon(Icons.alarm,color: Colors.white,size: 33,)),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child:Icon(Icons.calendar_view_month_outlined,color: Colors.white,size: 33,)),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child:Icon(Icons.flag_outlined,color: Colors.white,size: 33,)),
                     
                      ],),),
          
                      Container(
                        margin: EdgeInsets.only(left: 18),
                        padding: EdgeInsets.only(right: 8),
                        child: IconButton(onPressed: (){
                                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyIndex()));
                    
                      }, icon: Icon(Icons.send,color: const Color.fromARGB(255, 115, 54, 220),size: 33, ))),

                    ],)
          
                    ],),
                  ),),
                )
              ]
            ),
          )
      ),
      )
      
    );
  }
}



class MyIndex extends StatelessWidget {
  const MyIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      home: Scaffold(
        backgroundColor: Colors.black,
        
        appBar: AppBar(
          
          title: Text("Index",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
          centerTitle: true,
          leading:IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNaviagtionBarPage()));
         
          },),
          backgroundColor: Colors.black,
          actions: [
            CircleAvatar(backgroundImage:AssetImage("assets/images/f1.jpg"),),
           SizedBox(width: 12,),
          ],
        ),
        body: SingleChildScrollView(
          child:Column(
            children: [
             SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
              Container(
                      margin: EdgeInsets.only(left:15,),
                      padding: EdgeInsets.only(right:17,top:5),
                      child: TextField(
                        
                        cursorColor: Colors.grey,
                        style: TextStyle(color: Colors.white,fontSize: 22),
                        decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,color: Colors.white,size: 22,),
                        enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 61, 60, 60),
                              width: 3,
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 231, 226, 226),
                              width: 3,
                            )
                          ),
                         hintText: "Search for your task...",
                         hintStyle: TextStyle(color: Colors.grey,fontSize: 26)
                        ),
                        
                      ),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 120,
                          color: Color.fromARGB(255, 75, 74, 74),
                          margin: EdgeInsets.only(left: 12),
                          padding: EdgeInsets.all(8),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                          
                          Text("Today",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
                          Icon(Icons.arrow_downward_outlined,color: Colors.white,)
                          ])),
                      ],
                    ),
                     SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
                        Container(
                          color: Color.fromARGB(255, 35, 35, 35),
                          child: ListTile(
                                    leading:IconButton(onPressed: (){}, icon: Icon(Icons.circle_outlined,color: Colors.white,)),
                                    title: Text("Do Math Homework",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w400),),
                                   subtitle: Text("Today At 16:45",style: TextStyle(fontSize: 23,color: Colors.grey,),),
                                            
                                    trailing: Icon(Icons.flag,color: Colors.deepPurple,),
                                  ),
                        ),
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                        Container(
                          color: Color.fromARGB(255, 35, 35, 35),
                          child: ListTile(
                                    leading:IconButton(onPressed: (){}, icon: Icon(Icons.circle_outlined,color: Colors.white,)),
                                    title: Text("Tack out dogs",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w400),),
                                   subtitle: Text("Today At 18:20",style: TextStyle(fontSize: 23,color: Colors.grey,),),
                                            
                                    trailing: Icon(Icons.flag,color: Colors.deepPurple,),
                                  ),
                        ),
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                        Container(
                          color: Color.fromARGB(255, 35, 35, 35),
                          child: ListTile(
                                    leading:IconButton(onPressed: (){}, icon: Icon(Icons.circle_outlined,color: Colors.white,)),
                                    title: Text("Buisness meeting with CEO",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w400),),
                                   subtitle: Text("Today At 8:15",style: TextStyle(fontSize: 23,color: Colors.grey,),),
                                            
                                    trailing: Icon(Icons.flag,color: Colors.deepPurple,),
                                  ),
                        ),
                        
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                        Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 150,
                          color: Color.fromARGB(255, 75, 74, 74),
                          margin: EdgeInsets.only(left: 12),
                          padding: EdgeInsets.all(8),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                          
                          Text("completed",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
                          Icon(Icons.arrow_downward_outlined,color: Colors.white,)
                          ])),
                      ],
                    ),

                    SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
                        Container(
                          color: Color.fromARGB(255, 35, 35, 35),
                          child: ListTile(
                                    leading:IconButton(onPressed: (){}, icon: Icon(Icons.circle_outlined,color: Colors.white,)),
                                    title: Text("Buy Grocery",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w400),),
                                   subtitle: Text("Today At 16:15",style: TextStyle(fontSize: 23,color: Colors.grey,),),
                                            
                                    
                                  ),
                        ),

            
            ]
          )
      ),
      )
      
    );
  }
}