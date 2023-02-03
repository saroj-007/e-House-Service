
import 'package:flutter/material.dart';
import 'package:houseservice/login.dart';
import 'package:houseservice/login_page.dart';

void main() async {

  runApp(
    
    MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
      return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: login(),
        );
  }
}



