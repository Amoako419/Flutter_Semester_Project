import 'package:flutter/material.dart';

class Favorite extends StatelessWidget{
   const Favorite({super.key});

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor: Colors.red,
  title: const Text("Favorites"),
),
  body: Column(
    children: [
        _daily(1000),
       
    ],
  )
    
  );
  
  
  }

  Widget _daily(int steps) {
    return Container(
      width: double.infinity,
      height: 300.0,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(
              color: Color.fromARGB(255, 237, 0, 0), width: 2.0),
          borderRadius: BorderRadiusDirectional.circular(20),
          color: Color.fromARGB(255, 255, 255, 255)),
      child: Column(
        children: [
          Row(children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.donut_large),
              color: Colors.pink,
              iconSize: 30.0,
            ),
            Text(
              "Today steps",
              style: TextStyle(color: Colors.pink, fontSize: 20.0),
            ),
          ]),
          Text(
            "Keep taking steps to burn more calories.",
            style: TextStyle(fontSize: 20.0),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Align(
            alignment: Alignment.topLeft,
            child: Text("$steps steps",
                style: TextStyle(color: Colors.pink, fontSize: 30.0)),
          ),
          LinearProgressIndicator(
            value: 0.7,
          )
        ],
      ),
    );
  }

  Widget _yesterday(int steps) {
    return Container(
      width: double.infinity,
      height: 300.0,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 59, 55, 55), width: 2.0),
          borderRadius: BorderRadiusDirectional.circular(20),
          color: const Color.fromARGB(255, 234, 240, 240)),
      child: Column(
        children: [
          Row(children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.donut_large),
              color: Colors.pink,
              iconSize: 30.0,
            ),
            Text(
              "Steps",
              style: TextStyle(color: Colors.pink, fontSize: 20.0),
            ),
          ]),
          Text(
            "So far,you are taking more steps than you normally do",
            style: TextStyle(fontSize: 18.0),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Align(
            alignment: Alignment.topLeft,
            child: Text("$steps steps",
                style: TextStyle(color: Colors.pink, fontSize: 30.0)),
          ),
          LinearProgressIndicator(
            value: 0.7,
          )
        ],
      ),
    );
  }
}