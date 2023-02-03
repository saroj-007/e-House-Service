import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:houseservice/forgotpassword.dart';
import 'package:houseservice/home_page.dart';
import 'package:houseservice/registrationform.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Container(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Login Here',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 43,
                        ),

                        // Email Address
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.normal),
                          decoration: InputDecoration(
                            // enable border
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                   const BorderSide(width: 3, color: Colors.green),
                                borderRadius: BorderRadius.circular(15)),

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
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                              color: Colors.green,
                            ),
                            hintText: "Enter Your Email",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Required this field";
                            }
                            return null;
                          },
                        ),

                        const SizedBox(
                          height: 25,
                        ),

                        // Password
                        TextFormField(
                          keyboardType: TextInputType.text,
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.normal),
                          decoration: InputDecoration(
                            // enable border
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                   const BorderSide(width: 3, color: Colors.green),
                                borderRadius: BorderRadius.circular(15)),

                            // error border
                            errorBorder:  OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide:
                                 const  BorderSide(width: 3, color: Colors.redAccent),
                                  borderRadius: BorderRadius.circular(15),
                                  
                            ),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Colors.green,
                            ),
                            // suffixIcon: IconButton(
                            //   icon: Icon(
                            //     _passwordVisible ? Icons.visibility : Icons.visibility_off,
                            //     color: Theme.of(context).primaryColorDark,
                            //   ),
                            //   onPressed: () {

                            //   },
                            //   ),
                            hintText: "Enter Your Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                    color: Colors.blueAccent, width: 32.0)),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Required this field";
                            }
                            return null;
                          },
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        // Forget Password text

                        Container(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgotPassword()));
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(right: 0),
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),

                        Container(
                          height: 20,
                          child: Row(
                            children: [
                              Theme(
                                data: ThemeData(
                                    unselectedWidgetColor: Colors.white),
                                child: Checkbox(
                                    value: true,
                                    checkColor: Colors.blueAccent,
                                    activeColor: Colors.white,
                                    onChanged: (value) {}),
                              ),
                              const Text(
                                'Remember Me',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        // Login Button
                        SizedBox(
                          height: 60,
                          width: 400,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green[600],
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            onPressed: () {
                             // if (_formKey.currentState!.validate()) {}
                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CustomerHomePage()));
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        // Text -OR- keyword
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "OR",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        // Google SignIn
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[600],
                            minimumSize: const Size(double.infinity, 60),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          onPressed: () async {},
                          icon: const FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.red,
                          ),
                          label: const Text(
                            'Sign In with Google',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                        ),

                        // Text for registration
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 75.0),
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(
                                "Need an account?",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegistrationForm()));
                                  },
                                  child: const Text(
                                    " SIGN UP",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
