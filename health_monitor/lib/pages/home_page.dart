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
          _top()
        ],
      ),
    );
  }


  Widget _top(){
    return Container(
    width: double.infinity,
      height: 200,
      color: Colors.blue,
    child: const Text('Top'),
    );
  }
}
