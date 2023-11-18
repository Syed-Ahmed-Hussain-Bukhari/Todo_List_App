
import 'package:flutter/material.dart';

class MyCalenderPage extends StatefulWidget {
  const MyCalenderPage({super.key});

  @override
  State<MyCalenderPage> createState() => _MyCalenderPageState();
}

class _MyCalenderPageState extends State<MyCalenderPage> {
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
              SizedBox(height: MediaQuery.sizeOf(context).height*0.4,),
                  Container(
                  margin: EdgeInsets.only(left:12,right:12),
                  padding: EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: ()async{
                            DateTime? datepicked=await showDatePicker(context: context,
                           initialDate: DateTime.now(), 
                           firstDate: DateTime(2021), 
                           lastDate: DateTime(2023));
                          
                       
                                  },
                      child: Text("Select Date",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 20,color: Colors.white,),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.deepPurple,
                      ),  
                    ),
                  ),
                             ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),


                              Container(
                  margin: EdgeInsets.only(left:12,right:12),
                  padding: EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: ()async{
                            DateTime? datepicked=await showDatePicker(context: context,
                           initialDate: DateTime.now(), 
                           firstDate: DateTime(2021), 
                           lastDate: DateTime(2023));
                          
                       
                                  },
                      child: Text("Select Time",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 20,color: Colors.white,),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.deepPurple,
                      ),  
                    ),
                  ),
                             ),
            ]
          )
      ),
      )
      
    );
  }
}