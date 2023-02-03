import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:houseservice/login.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const login()))),
        centerTitle: true,
        title: const Text("Registration Form"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "images/loginss.png",
              ),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Username
                    Container(
                      color: Colors.white,
                      child: TextFormField(
                        decoration: InputDecoration(
                          
                            prefixIcon: Icon(Icons.person),
                            // enable border
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.green),
                              borderRadius: BorderRadius.circular(15),
                            ),

                            //
                            focusedBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(15)),

                            // error border
                            errorBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            //  label: const Text("Name"),
                            hintText: "Enter your name",
                            hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Required this field";
                          }
                          return null;
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),

                    // Age
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.numbers),
                            // enable border
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.green),
                                borderRadius: BorderRadius.circular(15)),

                            //
                            focusedBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(15)),

                            // error border
                            errorBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: "Enter your age",
                            hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Required this field";
                          }
                          return null;
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),

                    // Mobile Number
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            // enable border
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.green),
                                borderRadius: BorderRadius.circular(15)),

                            //
                            focusedBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(15)),

                            // error border
                            errorBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: "Enter your mobile number",
                            hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Required this field";
                          }
                          return null;
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),

                    // city
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.location_city),
                            // enable border
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.green),
                                borderRadius: BorderRadius.circular(15)),

                            //
                            focusedBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(15)),

                            // error border
                            errorBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: "Enter your city name",
                            hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Required this field";
                          }
                          return null;
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),

                    // street address
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.streetview),
                            hintText: "Enter your street address",
                            hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            // enable border
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.green),
                                borderRadius: BorderRadius.circular(15)),

                            //
                            focusedBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(15)),

                            // error border
                            errorBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(15),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Required this field";
                          }
                          return null;
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),

                    // Landmark
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.home),
                            hintText: "Enter nearby landmark",
                            hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            // enable border
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.green),
                                borderRadius: BorderRadius.circular(15)),

                            //
                            focusedBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(15)),

                            // error border
                            errorBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(15),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Required this field";
                          }
                          return null;
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),

                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.boy),
                            hintText: "Select your gender",
                            hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            // enable border
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.green),
                                borderRadius: BorderRadius.circular(15)),

                            //
                            focusedBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(15)),

                            // error border
                            errorBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(15),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Required this field";
                          }
                          return null;
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),

                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: "Enter your email address",
                            hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            // enable border
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.green),
                                borderRadius: BorderRadius.circular(15)),

                            //
                            focusedBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(15)),

                            // error border
                            errorBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(15),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Required this field";
                          }
                          return null;
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),

                    // Password Form
                    Container(
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: const Icon(Icons.visibility_off),
                          hintText: "Enter password",
                          hintStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                          // enable border
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.green),
                              borderRadius: BorderRadius.circular(15)),

                          //
                          focusedBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(15)),

                          // error border
                          errorBorder: OutlineInputBorder(
                            //<-- SEE HERE
                            borderSide: const BorderSide(
                                width: 3, color: Colors.redAccent),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Required this field";
                          }
                          return null;
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),

                    // Confirm Password
                    Container(
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: const Icon(Icons.visibility_off),
                          hintText: "Enter confirm password",
                          hintStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                          // enable border
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.green),
                              borderRadius: BorderRadius.circular(15)),

                          //
                          focusedBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(15)),

                          // error border
                          errorBorder: OutlineInputBorder(
                            //<-- SEE HERE
                            borderSide: const BorderSide(
                                width: 3, color: Colors.redAccent),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Required this field";
                          }
                          return null;
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),

                    // Elevated Button
                    SizedBox(
                      height: 60,
                      width: 400,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[900],
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            if (passwordController.text !=
                                conPasswordController.text) {
                              Fluttertoast.showToast(
                                  msg: "Password didnot match",
                                  gravity: ToastGravity.CENTER,
                                  textColor: Colors.redAccent,
                                  fontSize: 20.0);
                            } else {
                              Fluttertoast.showToast(
                                  msg: "Registration Successfull",
                                  gravity: ToastGravity.CENTER,
                                  textColor: Colors.redAccent,
                                  fontSize: 20.0);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => login()));
                            }
                          }
                        },
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
