

import 'package:flutter/material.dart';
import 'package:todo_list_app/login_page.dart';
import 'package:todo_list_app/setting_page.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child:SingleChildScrollView(
            child: Column(
              
              children: [
              SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
              Center(
                child: Container(
                  child:Text("Profile",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
                ),
              ), 
               SizedBox(height: 11,),
               Container(
                child: CircleAvatar(
                  radius: 34,
                  backgroundImage: AssetImage("assets/images/f1.jpg"),
                ),
               ),
               SizedBox(height: 14,),
              Center(
                child: Container(
                  child:Text("Syed Ahmed",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
                ),
              ), 
               SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
              Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        TextButton(onPressed: (){
                              }, 
          
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 83, 81, 81)
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(9),
                          child: Text("10 task left",style: TextStyle(color: Colors.white,fontSize: 20)))
                        ),
          
                        TextButton(onPressed: (){
                                   }, 
          
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 83, 81, 81)
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(9),
                          child: Text("5 Task done",style: TextStyle(color: Colors.white,fontSize: 20)))
                        
                        ),
                      ],),
                      SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[ Padding(
                          padding: EdgeInsets.only(left:12),
                          child: Text("Settings",style: TextStyle(color: Colors.grey,fontSize: 20)))]
                      ),
                      SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                        InkWell(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SettingPage()));
                     
                          },
                          child: ListTile(
                                    leading:IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white,)),
                                    title: Text("App Settings",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w400),),
                                    trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                                  ),
                        ),
          
                      SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[ Padding(
                          padding: EdgeInsets.only(left:12),
                          child: Text("Account",style: TextStyle(color: Colors.grey,fontSize: 20)))]
                      ),
          
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                        ListTile(
                                  leading:IconButton(onPressed: (){}, icon: Icon(Icons.person_2_outlined,color: Colors.white,)),
                                  title: Text("Change account name",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w400),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                                ),
          
                         SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                        ListTile(
                                  leading:IconButton(onPressed: (){}, icon: Icon(Icons.key,color: Colors.white,)),
                                  title: Text("Change account password",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w400),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                                ),
          
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                        ListTile(
                                  leading:IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,color: Colors.white,)),
                                  title: Text("change account Image",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w400),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                                ),
          
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[ Padding(
                          padding: EdgeInsets.only(top:5,left:12),
                          child: Text("Uptodo",style: TextStyle(color: Colors.grey,fontSize: 20)))]
                      ),
          
                      
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                        ListTile(
                                  leading:IconButton(onPressed: (){}, icon: Icon(Icons.apps,color: Colors.white,)),
                                  title: Text("About US",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w400),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                                ),
          
                        
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                        ListTile(
                                  leading:IconButton(onPressed: (){}, icon: Icon(Icons.expand_circle_down_rounded,color: Colors.white,)),
                                  title: Text("FAQ",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w400),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                                ),
          
                          
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                        ListTile(
                                  leading:IconButton(onPressed: (){}, icon: Icon(Icons.energy_savings_leaf_outlined,color: Colors.white,)),
                                  title: Text("Help & Feedback",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w400),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                                ),
          
          
                          
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                        ListTile(
                                  leading:IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions,color: Colors.white,)),
                                  title: Text("Support US",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w400),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                                ),
          
                          
                        SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                        InkWell(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
                     
                          },
                          child: ListTile(
                                    leading:IconButton(onPressed: (){}, icon: Icon(Icons.logout,color: Colors.red,)),
                                    title: Text("Log out",style: TextStyle(fontSize: 23,color: Colors.red,fontWeight: FontWeight.w400),),
                                    
                                  ),
                        ),
          
          
            ],),
          )
        ),
      ),
    );
  }
}


