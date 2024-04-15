import 'package:flutter/material.dart';

class Water extends StatefulWidget {
  const Water({super.key});

  @override
  State<Water> createState() => _WaterState();
}

class _WaterState extends State<Water> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("Water Intake"),
        
      ),
    );
  }


  Widget _learnMore() {
  return Container(
    padding: const EdgeInsets.all(30),
    margin: const EdgeInsets.all(20),
    width: double.infinity,
    height: 300,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.grey),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 60.0,
          backgroundImage: AssetImage('assets/images/medical_ID.png'),
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Set Up Medical ID",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "In an emergency,first responders can look at your medical ID to get life_saving information",
              style: TextStyle(fontSize: 12.0, color: Colors.black),
            )),
        ElevatedButton(
            onPressed: () {},
            child: const Text("Get started", style: TextStyle(fontSize: 15.1,color: Colors.red),))
      ],
    ),
  );
}
}