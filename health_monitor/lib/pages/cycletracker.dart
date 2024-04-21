import 'package:flutter/material.dart';

class cycletracker extends StatefulWidget {
  const cycletracker({super.key});

  @override
  State<cycletracker> createState() => _cycletrackerState();
}

class _cycletrackerState extends State<cycletracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },),
        title: const Text("Set Cycle tracker"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [ 

          ],
        ),
      )
    );
  }
}