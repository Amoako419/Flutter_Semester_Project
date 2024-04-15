// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_monitor/pages/favorite.dart';
import 'package:health_monitor/pages/heart_rate.dart';
import 'package:health_monitor/pages/profile.dart';
import 'package:health_monitor/pages/sleep.dart';
import 'package:health_monitor/pages/steps.dart';
import 'package:health_monitor/pages/water.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<Homepage> {
  _HomePageState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health Monitor'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _top(),
            _space(),
            _middle(),
            _space(),
            _button(),
            _space(),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "       More on health monitor",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            _learnMore(),
            _space(),
            _water(),
            _space(),
            _cycle()

          ],
        ),
      ),
    );
  }

// Widget _top() {
//   return Container(
//     padding: const EdgeInsets.all(20),
//     width: double.infinity,
//     height: 200,
//     color: Colors.blue,
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Text('Heart Rates', style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 252, 251, 251))),
//         const SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: () {
//             // Add your button press logic here
//           },
//           child: const Text('View Heart Rate'),
//         ),
//       ],
//     ),
//   );
// }

  Widget _top() {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/heart.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Heart Rates',
            style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 0, 0, 0)),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HeartRate()),
              );
            },
            child: const Text('View Heart Rate'),
          ),
        ],
      ),
    );
  }

  Widget _space() {
    return Container(
      height: 30.0,
    );
  }

  Widget _middle() {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/steps.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Steps',
            style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 0, 0, 0)),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Steps()),
              );
            },
            child: const Text('View Steps Course'),
          ),
        ],
      ),
    );
  }

  Widget _button() {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/sleep.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sleep',
            style: TextStyle(
                fontSize: 30, color: Color.fromARGB(255, 252, 251, 251)),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sleep()),
              );
            },
            child: const Text('View sleep Stats'),
          ),
        ],
      ),
    );
  }

  // Widget _end(){
  //   return const Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,

  //     children: [
  //       Icon(Icons.favorite,size: 40,),
  //       SizedBox(width: 10.0),
  //       Icon(Icons.home,size: 40,),
  //       SizedBox(width: 10.0),
  //       Icon(Icons.menu,size: 40,),
  //     ],
  //   );
  // }
  // Widget _end() {
  //   return Positioned(
  //       bottom: 0,
  //       right: 0,
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: [
  //           const SizedBox(
  //             width: 10.0,
  //           ),
  //           IconButton(
  //             icon: const Icon(
  //               Icons.favorite,
  //               color: Colors.red,
  //               size: 40,
  //             ),
  //             onPressed: () {
  //               // Favorites page
  //               Navigator.push(context,
  //                   MaterialPageRoute(builder: (context) => const Favorite()));
  //             },
  //           ),
  //           const SizedBox(width: 10.0),
  //           IconButton(
  //             icon: const Icon(
  //               Icons.home,
  //               color: Colors.blue,
  //               size: 40,
  //             ),
  //             onPressed: () {
  //               // Do something
  //             },
  //           ),
  //           const SizedBox(width: 10.0),
  //           IconButton(
  //             icon: const Icon(
  //               Icons.person_3_rounded,
  //               color: Colors.green,
  //               size: 40,
  //             ),
  //             onPressed: () {
  //               // Favorites page
  //               Navigator.push(context,
  //                   MaterialPageRoute(builder: (context) => const Profile()));
  //             },
  //           ),
  //         ],
  //       ));
  // }


/////////////////// HeartRate Start //////////////////////////////////
//
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
/////////////////// HeartRate End //////////////////////////////////

/////////////////// water Start //////////////////////////////////
Widget _water() {
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
          backgroundImage: AssetImage('assets/images/water.png'),
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Water Intake",
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
onPressed: () {
  // Data to pass to the Water page
// Replace with your actual data

  Navigator.push(
    context,
    CupertinoPageRoute(
      builder: (context) => const Water(), // Pass data using constructor
    ),
  );
},

    child: const Text("Get started", style: TextStyle(fontSize: 15.1, color: Colors.red)),
)
      ],
    ),
  );
}
/////////////////// water End //////////////////////////////////

/////////////////// Cycle tracking Start //////////////////////////////////
Widget _cycle() {
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
          backgroundImage: AssetImage('assets/images/cycle.jpg'),
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Cycle tracking",
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
onPressed: () {
  // Data to pass to the Water page
// Replace with your actual data

  Navigator.push(
    context,
    CupertinoPageRoute(
      builder: (context) => const Water(), // Pass data using constructor
    ),
  );
},

    child: const Text("Get started", style: TextStyle(fontSize: 15.1, color: Colors.red)),
)
      ],
    ),
  );
}
/////////////////// Cycle tracking End //////////////////////////////////
///
///
///
////////////////////// Favorite Start //////////////////////////////////

////////////////////// Favorite End //////////////////////////////////
///
///
///
///////////////////////// Profile Start //////////////////////////////////
}