import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     // backgroundColor: Colors.transparent,
      body: Stack(
        children: [

        
      
      Container(
        
            height: double.infinity,
            width: double.infinity,
           // child: Image.asset("images/logins.png"),
            
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.green,
                 Colors.lightGreen
                ])
            ),
      
      
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 200),
            // Image.asset(
            //   "images/logins.png"
            // ),
            const SizedBox(height: 20,),
            const Text(
              "Login Here",
              style: TextStyle(
                fontSize: 30,
                
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10,),

            

            Padding(padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter your email",
                prefixIcon: Icon(Icons.email_outlined,
                size: 18,
                color: Colors.blueAccent,),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blueAccent)
                )
              ),
            ),
            ),
             SizedBox(height: 10,),
            
           
          ],
        ),
      ),
    ),
    ],
      ),
    );
  }
}