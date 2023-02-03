import 'package:flutter/material.dart';
import 'package:houseservice/login.dart';

class CustomerBookingForm extends StatefulWidget {
  const CustomerBookingForm({super.key});

  @override
  State<CustomerBookingForm> createState() => _CustomerBookingFormState();
}

class _CustomerBookingFormState extends State<CustomerBookingForm> {

  final _formKey = GlobalKey<FormState>();

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
        title: const Text("Service Form"),
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
                    // City
                    Container(
                      color: Colors.white,
                      child: TextFormField(
                        decoration: InputDecoration(
                          
                            prefixIcon: Icon(Icons.location_city),
                            // enable border
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.green),
                              borderRadius: BorderRadius.circular(35),
                            ),

                            //
                            focusedBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(35)),

                            // error border
                            errorBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(35),
                            ),
                            //  label: const Text("Name"),
                            hintText: "Enter city name",
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

                    // Date
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.calendar_month),
                            // enable border
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.green),
                                borderRadius: BorderRadius.circular(35)),

                            //
                            focusedBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(35)),

                            // error border
                            errorBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(35),
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

                    // Problem Type
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.sync_problem),
                            // enable border
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.green),
                                borderRadius: BorderRadius.circular(35)),

                            //
                            focusedBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(35)),

                            // error border
                            errorBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(35),
                            ),
                            hintText: "Write your problem here",
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
                            // enable border
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.green),
                                borderRadius: BorderRadius.circular(35)),

                            //
                            focusedBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(35)),

                            // error border
                            errorBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(35),
                            ),
                            hintText: "Enter your street address here",
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

                    // Landmark
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.home),
                            hintText: "Give your landmark details",
                            hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            // enable border
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.green),
                                borderRadius: BorderRadius.circular(35)),

                            //
                            focusedBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(35)),

                            // error border
                            errorBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(35),
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

                    // Mobile Number
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            hintText: "Enter nearby landmark",
                            hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            // enable border
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.green),
                                borderRadius: BorderRadius.circular(35)),

                            //
                            focusedBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(35)),

                            // error border
                            errorBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(35),
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

                    // zipcode
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.post_add),
                            hintText: "Enter your zip code",
                            hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            // enable border
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.green),
                                borderRadius: BorderRadius.circular(35)),

                            //
                            focusedBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(35)),

                            // error border
                            errorBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.redAccent),
                              borderRadius: BorderRadius.circular(35),
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
                              borderRadius: BorderRadius.circular(35.0)),
                        ),
                        onPressed: () {
                         
                          },
                        
                        child: const Text(
                          'Book Now',
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