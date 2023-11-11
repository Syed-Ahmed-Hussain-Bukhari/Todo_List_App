
import 'package:flutter/material.dart';
import 'package:todo_list_app/profile_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      home:Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Settings",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
            centerTitle: true,
          backgroundColor: Colors.black,
       leading: IconButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyProfilePage()));
      }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,))
        ),

        body:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:[ Container(
                  padding: EdgeInsets.only(left: 17),
                    child:Text("Settings",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
                  ),
                ]
              ),

                 SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
                        ListTile(
                                  leading:IconButton(onPressed: (){}, icon: Icon(Icons.color_lens_outlined,color: Colors.white,)),
                                  title: Text("Change app color",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                                ),

                  SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                        ListTile(
                                  leading:IconButton(onPressed: (){}, icon: Icon(Icons.text_fields_outlined,color: Colors.white,)),
                                  title: Text("Change app typography",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                                ),

                  SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                        ListTile(
                                  leading:IconButton(onPressed: (){}, icon: Icon(Icons.key,color: Colors.white,)),
                                  title: Text("Change app language",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                                ),

                  SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:[ Container(
                  padding: EdgeInsets.only(left: 17),
                    child:Text("Import",style: TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.bold)),
                  ),
                ]
              ),

              SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                        ListTile(
                                  leading:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_down_rounded,color: Colors.white,)),
                                  title: Text("Import from Google calender",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                                ),
          
            ],
          ),
        )


      )
      );
  }
  }