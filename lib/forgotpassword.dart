
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController emails = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text("Verify Email"),
      ),

      body:  Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                    image: AssetImage(
                      "images/loginss.png",
                    ),
                    fit: BoxFit.cover),
              // gradient: LinearGradient(
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              //   colors: [
              //     Color(0x66fa8dc),
              //     Color(0x996fa8dc),
              //     Color(0xcc6fa8dc),
              //     Color(0xff6fa8dc),
              //   ])
            ),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 40),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: TextFormField(
                      controller: emails,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                                decoration: InputDecoration(
                      
                            // enable border
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                   const BorderSide(width: 3, color: Colors.green),
                                borderRadius: BorderRadius.circular(15),
                                
                                ),

                            //
                            focusedBorder: OutlineInputBorder( //<-- SEE HERE
      borderSide: BorderSide(
          width: 3, color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(15) 
    ),

                            // error border
                            errorBorder:  OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide:
                                 const  BorderSide(width: 3, color: Colors.redAccent),
                                  borderRadius: BorderRadius.circular(15),
                                  
                            ),
                          //  label: const Text("Name"),
                      hintText: "Enter your email address",
                            ),
                                validator: (value) {
                                  if(value == null || value.isEmpty){
                                    return "Required this field";
                                  }
                                  return null;
                                },
                                
                              ),
                  ),

                            const SizedBox(height: 35.0,),
                  

                  // Elevated Button
                  SizedBox(
                  height: 60,
                    width: 400,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
               
              ),
                      onPressed: () {

                        // Check whether the text field left blank or not
                        if (_formKey.currentState!.validate()){

                          // check the email validation and store boolean result
                        

                          // Check whether the email valid or not
                          // if valid then route to diffrent page 
                          
                        }
                      }, 
                      child: const Text('Verify', 
                      style: TextStyle(
                        fontSize: 23, 
                        fontWeight: FontWeight.bold
                        ),
                        ), 
                      ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      
                
      
    );
  }
}