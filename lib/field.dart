import 'package:flutter/material.dart';

class Field extends StatefulWidget {
  const Field({Key? key}) : super(key: key);

  @override
  State<Field> createState() => _FieldState();
}

class _FieldState extends State<Field> {
   TextEditingController _Controllername = TextEditingController();
   TextEditingController _Controlleremail = TextEditingController();
   TextEditingController _Controllerpassword = TextEditingController();
   TextEditingController _Controllerphonenumber = TextEditingController();
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Text Field'),
        centerTitle: true,
      ),
     body:Column(
       children: [

           Padding(
             padding: const EdgeInsets.only(top: 15,left: 30,right: 30),
             child: TextField(keyboardType: TextInputType.text,
               controller: _Controllername,
               decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
                   borderSide: new BorderSide(color: Colors.lightGreenAccent,width:2.0),


                   borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
                 ),
                 hintText: "Enter your name",
                 hintStyle: TextStyle(fontFamily: "PlayfairDisplay",fontWeight: FontWeight.w500,fontSize: 18),
                 labelText: "Enter Your Name",
                 labelStyle: TextStyle(fontFamily: "Asap",fontWeight: FontWeight.w500,fontSize: 16),
               ),
             ),
           ),
         Padding(
           padding: const EdgeInsets.only(top: 15,left: 30,right: 30),
           child: TextField(
             keyboardType: TextInputType.emailAddress,
             controller: _Controlleremail,

             decoration: InputDecoration(
               enabledBorder: OutlineInputBorder(
                 borderSide:  BorderSide(color: Colors.deepPurpleAccent,width:2.0),



                 borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
               ),
               hintText: "Enter your email",
               hintStyle: TextStyle(fontFamily: "PlayfairDisplay",fontWeight: FontWeight.w500,fontSize: 18),
               labelText: "Enter Your Email",
               labelStyle: TextStyle(fontFamily: "Asap",fontWeight: FontWeight.w500,fontSize: 16),
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(top: 15,left: 30,right: 30),
           child: TextField(
             keyboardType: TextInputType.text,
             controller: _Controllerpassword,
             obscureText: true,
             decoration: InputDecoration(

               border: OutlineInputBorder(
                 borderSide: new BorderSide(color: Colors.teal,width:1.0),

                 gapPadding: 4.0,
                 borderRadius: BorderRadius.only(topRight: Radius.circular(20)),

               ),

               hintText: "Enter your psssword",
               hintStyle: TextStyle(fontFamily: "PlayfairDisplay",fontWeight: FontWeight.w500,fontSize: 18),
               labelText: "Enter Your Password",
               labelStyle: TextStyle(fontFamily: "Asap",fontWeight: FontWeight.w500,fontSize: 16),

             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(top: 15,left: 30,right: 30),
           child: TextField(
             controller: _Controllerphonenumber,
             keyboardType: TextInputType.number,
             decoration: InputDecoration(
               enabledBorder: OutlineInputBorder(
                 borderSide: new BorderSide(color: Colors.tealAccent,width:1.0),

                 gapPadding: 4.0,
                 borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
               ),
               hintText: "Enter your phone number",
               hintStyle: TextStyle(fontFamily: "PlayfairDisplay",fontWeight: FontWeight.w500,fontSize: 18),
               labelText: "Enter Your Phone Number",
               labelStyle: TextStyle(fontFamily: "Asap",fontWeight: FontWeight.w500,fontSize: 16),
             ),
           ),
         ),
         SizedBox(height: 30,),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             ElevatedButton(onPressed: (){
              Navigator.pop(context);
             },

               child: Container(
                 width: 75,
                 child: Row(
                   children: [
                     Icon(Icons.arrow_back),
                     SizedBox(width: 5,),
                     Text("Back",style: TextStyle(fontFamily: "Asap",fontWeight: FontWeight.w100,fontSize: 16),),


                   ],
                 ),
               ),),
             SizedBox(width: 20,),
             ElevatedButton(onPressed: (){},

               child: Container(
                 width: 75,
                 child: Row(
                   children: [
                     Text("Click",style:TextStyle(fontFamily: "PlayfairDisplay",fontWeight: FontWeight.w500,fontSize: 18),),
                     SizedBox(width: 5,),
                     Icon(Icons.arrow_forward)
                   ],
                 ),
               ),),
           ],
         ),
       ],
     ),
    );
  }
}
