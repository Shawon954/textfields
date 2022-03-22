import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class formField extends StatefulWidget {
  const formField({Key? key}) : super(key: key);

  @override
  State<formField> createState() => _formFieldState();
}

class _formFieldState extends State<formField> {

  final fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Form Field"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 30,left: 30),
            child: Form(
              key: fromkey,
              child: TextFormField(
                keyboardType:TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter your name ",
                  hintStyle: TextStyle(fontFamily: "PlayfairDisplay",fontWeight: FontWeight.w500,fontSize: 18),
                  labelText: "Enter Your Name",
                   labelStyle: TextStyle(fontFamily: "Asap",fontWeight: FontWeight.w500,fontSize: 16),
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20),),
                     borderSide: BorderSide(color: Colors.pinkAccent,width: 2.0),
                   ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 30,left: 30),
            child: TextFormField(
              keyboardType:TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter your email ",
                hintStyle: TextStyle(fontFamily: "PlayfairDisplay",fontWeight: FontWeight.w500,fontSize: 18),
                labelText: "Enter Your Email",
                labelStyle: TextStyle(fontFamily: "Asap",fontWeight: FontWeight.w500,fontSize: 16),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20),),
                  borderSide: BorderSide(color: Colors.greenAccent,width: 2.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 30,left: 30),
            child: TextFormField(
              obscureText: true,
              keyboardType:TextInputType.text,
              decoration: InputDecoration(
                hintText: "Enter your password ",

                hintStyle: TextStyle(fontFamily: "PlayfairDisplay",fontWeight: FontWeight.w500,fontSize: 18),
                labelText: "Enter Your Password",
                labelStyle: TextStyle(fontFamily: "Asap",fontWeight: FontWeight.w500,fontSize: 16),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20),),
                  borderSide: BorderSide(color: Colors.orange,width: 2.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 30,left: 30),
            child: TextFormField(
              keyboardType:TextInputType.number,
              decoration: InputDecoration(

                hintText: "Enter your phone number ",
                hintStyle: TextStyle(fontFamily: "PlayfairDisplay",fontWeight: FontWeight.w500,fontSize: 18),
                labelText: "Enter Your Phone Number",
                labelStyle: TextStyle(fontFamily: "Asap",fontWeight: FontWeight.w500,fontSize: 16),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20),),
                  borderSide: BorderSide(color: Colors.indigoAccent,width: 2.0),
                ),
              ),
            ),
          ),
              SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){

                Navigator.pop(context);
              },

                  child: Container(
                    width:75,
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back),
                        SizedBox(width: 5,),
                        Text("Back",style:TextStyle(fontFamily: "Asap",fontWeight: FontWeight.w500,fontSize: 16),),


                      ],
                    ),
                  ),),
              SizedBox(width: 20,),
              ElevatedButton(onPressed: (){},

                child: Container(
                  width:75,
                  child: Row(
                    children: [
                      Text("Click",style:TextStyle(fontFamily: "Asap",fontWeight: FontWeight.w500,fontSize: 16),),
                      SizedBox(width: 5,),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),),

            ],
          )


        ],
      ),
    );
  }
}
