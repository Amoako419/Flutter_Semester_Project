import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cycleTracker extends StatefulWidget {
  const cycleTracker({super.key});

  @override
  State<cycleTracker> createState() => _cycleTrackerState();
}

class _cycleTrackerState extends State<cycleTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },),
        title: const Text("Cycle tracker"),
                   actions: [
IconButton(
                  icon: const Icon(Icons.info),
                  onPressed: () {
                    // Show about sleep dialog
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('About Cycle tracker'),
                          content: const Text(
                                        'Tracking your menstrual cycle can help you understand your overall health',
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [_cycle()],
        ),
        
      
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'favorite', // used by assistive technologies
        onPressed: null,
        child: Icon(Icons.favorite_outline),
      ),
      
      
    );
  }

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
        color: Color.fromARGB(255, 230, 221, 221)),
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
              "Tracking your menstrual cycle can help you understand your overall health",
              style: TextStyle(fontSize: 12.0, color: Colors.black),
            )),
        ElevatedButton(
onPressed: () {
  // Data to pass to the Water page
// Replace with your actual data

  // Navigator.push(
  //   context,
  //   CupertinoPageRoute(
  //     builder: (context) => const cycleTracker(), // Pass data using constructor
  //   ),
  // );
},

    child: const Text("Get started", style: TextStyle(fontSize: 15.1, color: Colors.red)),
)
      ],
    ),
  );
}


}