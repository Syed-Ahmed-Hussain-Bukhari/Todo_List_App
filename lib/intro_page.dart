
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo_list_app/login_page.dart';
import 'package:todo_list_app/register_page.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

@override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () { 
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>first_page()));
    }
    );
  }


  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      home: Scaffold(
        backgroundColor: Colors.black,
        body:Center(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.97,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                      Container(
                        child: const Icon(Icons.check_box_outlined,color: Colors.purple,size: 90,),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        child: const Text("UpTodo",style:TextStyle(
                          color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold
                        ),)
                      ),            
                      ],
                      
                    ) ,
                  ),
                  Container(width: MediaQuery.sizeOf(context).width*0.45,height: 5,color: Colors.white,),
                   ],
              ),
            ),
          ),
        ),
        ),
    );
  }
}


class first_page extends StatelessWidget {
  const first_page({super.key});

  @override
  Widget build(BuildContext context) {
    return firstPages(context,Colors.white,Colors.grey,Colors.grey,"Manage Your tasks","You can easily manage all of your daily","tasks in DoMe for free","NEXT");
  }
}


class second_page extends StatelessWidget {
  const second_page({super.key});
  @override
  Widget build(BuildContext context) {
    return secondPages(context,Colors.grey,Colors.white,Colors.grey,"Create daily routine","In Uptodo you can create your","personalized routine to stay productive","NEXT", // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SucessFulRegistered()));
            );
  }
}


class third_page extends StatelessWidget {
  const third_page({super.key}); 

  @override
  Widget build(BuildContext context) {
    return thirdPages(context,Colors.grey,Colors.grey,Colors.white,"Organize your tasks","You can Organize your daily tasks by","adding your tasks into separate categories","GET STARTED");
  }
}




/////////////////////////



firstPages(context,Color firstColor,Color secondColor,Color thirdColor, String main_text,String text1,String text2,String button_text){

  return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      home: Scaffold(
        backgroundColor: Colors.black,
           body: ListView(
            children:[
              SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      height: MediaQuery.sizeOf(context).height*0.98,
                      child: Column(
                        children: [
                           

                           Row(
                             children:[ Container(
                                                 padding: EdgeInsets.only(left: 15,right: 12,top: 25),
                                                 child: const Text("SKIP",style: TextStyle(color: Colors.grey,fontSize: 25),),
                                               ),
                             ]
                           ),
                    // picture
                    SizedBox(
                      height:MediaQuery.sizeOf(context).height*0.32,
                      child:Image(image: AssetImage("assets/images/page1.png")),
                    ),
                    SizedBox(height:MediaQuery.sizeOf(context).height*0.01,),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children:[Container(width: MediaQuery.sizeOf(context).width*0.1,height: 3,color: firstColor,),
                      SizedBox(width: 6,),
                      Container(width: MediaQuery.sizeOf(context).width*0.1,height: 3,color: secondColor,),
                      SizedBox(width: 6,),
                      Container(width: MediaQuery.sizeOf(context).width*0.1,height: 3,color: thirdColor,)
                                        ] 
                    ),

                    SizedBox(height: 55,),
                    
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(left: 15,right: 12,top: 25),
                        child: Text(main_text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                      ),
                    ),

                    SizedBox(height: 40,),
                    
                    Center(
                      child: Container(
                        // width: double.infinity,
                        padding: EdgeInsets.only(left: 15,right: 12,top: 25),
                        child: Text(text1,
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                    ),

                    Center(
                      child: Container(
                        // width: double.infinity,
                        padding: EdgeInsets.only(top:10),
                        child: Text(text2,
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                    ),
                     
                    SizedBox(height:MediaQuery.sizeOf(context).height*0.15,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      TextButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SplashPage()));
                      }, 
                      child: Text("BACK",style: TextStyle(color: Colors.grey,fontSize: 23))
                      ),

                      TextButton(onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>second_page()));
                 
                      }, 

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(button_text,style: TextStyle(color: Colors.white,fontSize: 23)))
                      
                      ),

                    ],)
                        ],
                      ), 
                    ),

                    Center(child: Container(width: MediaQuery.sizeOf(context).width*0.45,height: 5,color: Colors.white,)),
                  ],
                ),
            ),
            ]
           ),


       
        ),
    );
}


secondPages(context,Color firstColor,Color secondColor,Color thirdColor, String main_text,String text1,String text2,String button_text){

  return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      home: Scaffold(
        backgroundColor: Colors.black,
           body: ListView(
            children:[
              SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      height: MediaQuery.sizeOf(context).height*0.98,
                      child: Column(
                        children: [
                           

                           Row(
                             children:[ Container(
                                                 padding: EdgeInsets.only(left: 15,right: 12,top: 25),
                                                 child: const Text("SKIP",style: TextStyle(color: Colors.grey,fontSize: 25),),
                                               ),
                             ]
                           ),
                    // picture
                    SizedBox(
                      height:MediaQuery.sizeOf(context).height*0.32,
                      child:Image(image: AssetImage("assets/images/page2.png")),
                    ),
                    SizedBox(height:MediaQuery.sizeOf(context).height*0.01,),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children:[Container(width: MediaQuery.sizeOf(context).width*0.1,height: 3,color: firstColor,),
                      SizedBox(width: 6,),
                      Container(width: MediaQuery.sizeOf(context).width*0.1,height: 3,color: secondColor,),
                      SizedBox(width: 6,),
                      Container(width: MediaQuery.sizeOf(context).width*0.1,height: 3,color: thirdColor,)
                                        ] 
                    ),

                    SizedBox(height: 55,),
                    
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(left: 15,right: 12,top: 25),
                        child: Text(main_text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                      ),
                    ),

                    SizedBox(height: 40,),
                    
                    Center(
                      child: Container(
                        // width: double.infinity,
                        padding: EdgeInsets.only(left: 15,right: 12,top: 25),
                        child: Text(text1,
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                    ),

                    Center(
                      child: Container(
                        // width: double.infinity,
                        padding: EdgeInsets.only(top:10),
                        child: Text(text2,
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                    ),
                     
                    SizedBox(height:MediaQuery.sizeOf(context).height*0.15,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>first_page()));
                      }, 
                      child: Text("BACK",style: TextStyle(color: Colors.grey,fontSize: 23))
                      ),

                      TextButton(onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>third_page()));
                      }, 

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(button_text,style: TextStyle(color: Colors.white,fontSize: 23)))
                      
                      ),

                    ],)
                        ],
                      ), 
                    ),

                    Center(child: Container(width: MediaQuery.sizeOf(context).width*0.45,height: 5,color: Colors.white,)),
                  ],
                ),
            ),
            ]
           ),


       
        ),
    );
}


thirdPages(context,Color firstColor,Color secondColor,Color thirdColor, String main_text,String text1,String text2,String button_text){

  return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      home: Scaffold(
        backgroundColor: Colors.black,
           body: ListView(
            children:[
              SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      height: MediaQuery.sizeOf(context).height*0.98,
                      child: Column(
                        children: [
                           

                      Row(
                        children:[ Container(
                        padding: EdgeInsets.only(left: 15,right: 12,top: 25),
                        child: const Text("SKIP",style: TextStyle(color: Colors.grey,fontSize: 25),),
                                          ),
                        ]
                      ),
                    // picture
                    SizedBox(
                      height:MediaQuery.sizeOf(context).height*0.32,
                      child:Image(image: AssetImage("assets/images/page3.png")),
                    ),
                    SizedBox(height:MediaQuery.sizeOf(context).height*0.01,),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children:[Container(width: MediaQuery.sizeOf(context).width*0.1,height: 3,color: firstColor,),
                      SizedBox(width: 6,),
                      Container(width: MediaQuery.sizeOf(context).width*0.1,height: 3,color: secondColor,),
                      SizedBox(width: 6,),
                      Container(width: MediaQuery.sizeOf(context).width*0.1,height: 3,color: thirdColor,)
                                        ] 
                    ),

                    SizedBox(height: 55,),
                    
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(left: 15,right: 12,top: 25),
                        child: Text(main_text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                      ),
                    ),

                    SizedBox(height: 40,),
                    
                    Center(
                      child: Container(
                        // width: double.infinity,
                        padding: EdgeInsets.only(left: 15,right: 12,top: 25),
                        child: Text(text1,
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                    ),

                    Center(
                      child: Container(
                        // width: double.infinity,
                        padding: EdgeInsets.only(top:10),
                        child: Text(text2,
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                    ),
                     
                    SizedBox(height:MediaQuery.sizeOf(context).height*0.15,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>second_page()));
                      }, 
                      child: Text("BACK",style: TextStyle(color: Colors.grey,fontSize: 23))
                      ),

                      TextButton(onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login_signUp_option(context)));
                      }, 

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(button_text,style: TextStyle(color: Colors.white,fontSize: 23)))
                      
                      ),

                    ],)
                        ],
                      ), 
                    ),

                    Center(child: Container(width: MediaQuery.sizeOf(context).width*0.45,height: 5,color: Colors.white,)),
                  ],
                ),
            ),
            ]
           ),


       
        ),
    );
}


/////////////////
login_signUp_option(context){

  return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list App',
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>third_page()));
      }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,))
    ),
     body:Container(
      child:Center(
        child: Column(
          children: [

            Container(
              height: MediaQuery.sizeOf(context).height*0.91,
              child: Column(children: [
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
            Container(
              child:Text("Welcome to UpTodo",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
            Container(
              child:Text("Pleasee login to your account or create",style: TextStyle(color: Colors.grey,fontSize: 20,)),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
            Container(
              child:Text("new account to continue",style: TextStyle(color: Colors.grey,fontSize: 20,)),
            ),
             SizedBox(height: MediaQuery.sizeOf(context).height*0.5,),
           
           Container(
                padding: EdgeInsets.all(12),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
            
                             },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                    ), 
                    child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              
              SizedBox(height: 10,),
               Container(
                padding: EdgeInsets.all(12),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SingUpPage()));
                    },
                    
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.deepPurple,
                      backgroundColor: Colors.white,
                    ), 
                    child: Text("CREATE ACCOUNT",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ],
            ),
            ),
            Center(child: Container(width: MediaQuery.sizeOf(context).width*0.45,height: 5,color: Colors.white,)),
          
          

          ],
        ),
      )
     ) ,
    
    ),
  );
}