import 'package:flutter/material.dart';
import 'package:textfields/field.dart';
import 'package:textfields/text_form_field.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(title: Text("Home Page"),
         centerTitle: true,),

         body: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 50,left: 30,right: 30),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                     height: 150,
                     width: 150,



                     child: GestureDetector(
                       onTap: (){
                         Navigator.push(context,MaterialPageRoute(builder: (context)=>Field()));
                       },
                       child: Card(
                          color: Colors.greenAccent,
                         shadowColor: Colors.amberAccent,
                         elevation: 10,
                         child: Column(
                           children: [
                             SizedBox(height: 20,),
                             Icon(Icons.wb_auto_outlined,size: 50,),
                             SizedBox(height: 20,),
                             Text("Text Field",style: TextStyle(color: Colors.black,fontSize: 18,),),
                           ],
                         ),
                       ),
                     ),
                   ),
                   SizedBox(width: 20,),
                   Container(
                     height: 150,
                     width: 150,

                     child: GestureDetector(
                       onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>formField()));
                       },
                       child: Card(
                         color: Colors.amberAccent,
                         shadowColor: Colors.greenAccent,
                         elevation: 10,
                         child: Column(
                           children: [
                             SizedBox(height: 20,),
                             Icon(Icons.wb_auto_outlined,size: 50,),
                             SizedBox(height: 20,),
                             Text("Text Form Field",style: TextStyle(color: Colors.black,fontSize: 18),),
                           ],
                         ),
                       ),
                     ),
                   )
                 ],
               ),
             )
           ],
         ),
       );
  }
}
