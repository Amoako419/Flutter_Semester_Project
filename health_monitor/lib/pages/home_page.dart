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


Widget _top() {
  return Container(
    padding: const EdgeInsets.all(20),
    width: double.infinity,
    height: 200,
    color: Colors.blue,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Heart Rates', style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 252, 251, 251))),
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
    color: Colors.blue,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Steps', style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 252, 251, 251))),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Add your button press logic here
          },
          child: const Text('View Steps'),
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
    color: Colors.blue,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Sleep', style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 252, 251, 251))),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Add your button press logic here
          },
          child: const Text('Start Sleep'),
        ),
      ],
    ),
  );
}

  Widget _end(){
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.favorite,size: 40,),
        SizedBox(width: 10.0),
        Icon(Icons.home,size: 40,),
        SizedBox(width: 10.0),
        Icon(Icons.menu,size: 40,),
      ],
    );
  }
}
