import 'package:flutter/material.dart';
import 'package:textfields/field.dart';
import 'package:textfields/homepage.dart';
import 'package:textfields/text_form_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes:{
        '/_field':(context)=>Field(),
        '/_from_field':(context)=>formField(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

