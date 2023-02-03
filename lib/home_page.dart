import 'package:flutter/material.dart';
import 'package:houseservice/booking_form.dart';
import 'package:houseservice/login.dart';

class CustomerHomePage extends StatefulWidget {
  const CustomerHomePage({super.key});

  @override
  State<CustomerHomePage> createState() => _CustomerHomePageState();
}

class _CustomerHomePageState extends State<CustomerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: (() {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const login()))),
            }
            ),),
        actions: [
          InkWell(child: Icon(Icons.logout), onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const login()));
          },)

        ],     
           
        centerTitle: true,
        title: const Text("Home Page"),
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
       
        // grid view part
        child:  Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView(
              // ignore: sort_child_properties_last
              children: [

                // Cleaner
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: Colors.red
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.cleaning_services, size: 50, color: Colors.white,),
                        Text("Cleaning", style: TextStyle(color: Colors.white, fontSize: 30),)
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CustomerBookingForm()));
                  },
                ),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.green
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.plumbing, size: 50, color: Colors.white,),
                      Text("Plumber", style: TextStyle(color: Colors.white, fontSize: 30),)
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.yellow
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.electric_meter, size: 50, color: Colors.white,),
                      Text("Electrician", style: TextStyle(color: Colors.white, fontSize: 30),)
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.grey
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.format_paint_rounded, size: 50, color: Colors.white,),
                      Text("Painter", style: TextStyle(color: Colors.white, fontSize: 30),)
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.blue
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.forest, size: 50, color: Colors.white,),
                      Text("Gardener", style: TextStyle(color: Colors.white, fontSize: 30),)
                    ],
                  ),
                ),

                // Carpenter
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.tealAccent
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.carpenter, size: 50, color: Colors.white,),
                      Text("Carpenter", style: TextStyle(color: Colors.white, fontSize: 30),)
                    ],
                  ),
                ),
                
              ],
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
                mainAxisExtent: 200
                ),
                
              ),
          ),
        )
      ),
    );
  }
}