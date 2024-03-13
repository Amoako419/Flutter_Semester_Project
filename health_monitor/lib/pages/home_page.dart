import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          _top(),
          _space(),
          _middle(),
          _space(),
          _button(),
          _space(),
          _end()
        ],
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
            // Add your button press logic here
          },
          child: const Text('View Heart Rate'),
        ),
      ],
    ),
  );
}



  Widget _space(){
    return Container(
      height: 30.0,
    );
  }

Widget _middle() {
  return Container(
    padding: const EdgeInsets.all(20),
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
            // Add your button press logic here
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
          style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 252, 251, 251)),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Add your button press logic here
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
Widget _end() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.favorite, color: Colors.red, size: 40,),
        SizedBox(width: 10.0),
        Icon(Icons.home, color: Colors.blue, size: 40,),
        SizedBox(width: 10.0),
        Icon(Icons.person_3_rounded, color: Colors.green, size: 40,),
      ],
    );
  }
}
