

import 'package:flutter/material.dart';
import 'package:todo_list_app/Bottom_navigator_bar_page.dart';
import 'package:todo_list_app/intro_page.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      home:Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
       leading: IconButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login_signUp_option(context)));
      }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,))
        ),

        body: SingleChildScrollView(child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left:20),
              height: MediaQuery.sizeOf(context).height*0.91,
               child: SingleChildScrollView(
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
                     Container(
                    child:Text("Register",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
               
                  Container(
                    child:Text("Username",style: TextStyle(color: Colors.white,fontSize: 20,)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right:17,top:12),
                    child: TextField(
                      cursorColor: Colors.grey,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 3,
                          )
                        ),
                       hintText: "Enter your username",
                       hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),
                  ),
                 SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                  Container(
                    child:Text("Password",style: TextStyle(color: Colors.white,fontSize: 20,)),
                  ),
               
                  Container(
                    margin: EdgeInsets.only(right:17,top:12),
                    child: TextField(
                      obscureText: true,
                      cursorColor: Colors.grey,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 3,
                          )
                        ),
                       hintText: "Enter your Password",
                       hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),
                  ),
                   SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                  Container(
                    child:Text("Confirm Password",style: TextStyle(color: Colors.white,fontSize: 20,)),
                  ),
               
                  Container(
                    margin: EdgeInsets.only(right:17,top:12),
                    child: TextField(
                      obscureText: true,
                      cursorColor: Colors.grey,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 3,
                          )
                        ),
                       hintText: "Enter your Password",
                       hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),
                  ),
               
                   SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
                  Container(
                  margin: EdgeInsets.only(right:12),
                  padding: EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNaviagtionBarPage()));      },
                      child: Text("Register",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 20,color: Colors.white,),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.deepPurple,
                      ),  
                    ),
                  ),
                             ),
                 SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                             Center(child: Container(child: Text("or",style: TextStyle(color: Colors.white,fontSize: 22),),)),
                 SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                            
                   Container(
                    margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.g_mobiledata_outlined,color: Colors.black,),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNaviagtionBarPage()));    },
                      label: Text("Register with Google",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 20,color: Colors.black,),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.white,
                      ),  
                    ),
                  ),
                             ),
                   Container(
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: (){
                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNaviagtionBarPage())); },
                      icon: Icon(Icons.apple,color: Colors.black,),
                      label: Text("Register with Apple",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 20,color: Colors.black,),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.white,
                      ),  
                    ),
                  ),
                             ),
                             SizedBox(height: 40,),
                             Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(child: 
                    Text("Don't have account?",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 15,color: Colors.grey,),
                      ),),
                      Container(child: 
                    Text("Register",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 15,color: Colors.white,),
                      ),)
                  ],
                             )
                  
                             ],
                           ),
               )),
            Center(child: Container(width: MediaQuery.sizeOf(context).width*0.45,height: 5,color: Colors.white,)),
          
            ]
          )
      
        )
      ));
  }
}