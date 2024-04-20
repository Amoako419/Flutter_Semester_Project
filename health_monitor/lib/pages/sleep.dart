import 'package:flutter/material.dart';
import 'package:health_monitor/pages/timepicker.dart';

class Sleep extends StatefulWidget {
  const Sleep({super.key});

  @override
  State<Sleep> createState() => _SleepState();
}

class _SleepState extends State<Sleep> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 7,
            child: Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: const Text("Sleep"),
                bottom: const TabBar(tabs: [
                  Tab(text: "M"),
                  Tab(text: "T"),
                  Tab(text: "W"),
                  Tab(text: "T"),
                  Tab(text: "F"),
                  Tab(text: "S"),
                  Tab(text: "S"),
                ]),
                actions: [
IconButton(
                  icon: const Icon(Icons.info),
                  onPressed: () {
                    // Show about sleep dialog
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('About Sleep'),
                          content: const Text(
                            'Sleep provides insight into your sleep habits.Sleep trackers and monitors can help you determine the amount of time you are in bed and asleep.These devices estimate your time in bed and your time asleep by analysing changes in physical activity, including movement during the night. You can also keep track of your sleep by entering your own estimation ofyour time in bed and time asleep manually.The In Bed period reflects the time period you are lying in bed with the intention to sleep. For most people, it starts when you turn the lights off and it ends when you get out of bed. The Asleep period reflects the period(s) you are asleep.',
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
              body: TabBarView(
                children: [
                  _monday(),
                  _tuesday(),
                  _wednesday(),
                  _thursday(),
                  _friday(),
                  _saturday(),
                  _sunday()
                ],
              ),
                 floatingActionButton: const FloatingActionButton(
        tooltip: 'favorite', // used by assistive technologies
        onPressed: null,
        child: Icon(Icons.favorite_outline),
      ),
            )
            ),
            
            );
            
  }

    Widget _add() {
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
          color: Colors.cyan),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60.0,
            backgroundImage: AssetImage('assets/images/bed.jpg'),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Set Up Sleep",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Your devices can help you get better sleep and understand your sleep patterns",
                style: TextStyle(fontSize: 12.0, color: Colors.black),
              )),
          ElevatedButton(
              onPressed: () {
                 Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TimePickerWidget())
              );
              },
              child:
                  const Text("Get started", style: TextStyle(fontSize: 15.1)))
        ],
      ),
    );
  }

  Widget _done(){
    return Container(
      
    );
  }

  ////--- Start Monday --//////
  Widget _monday() {
    return SingleChildScrollView(
        child: Column(
      children: [
        _space(),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "  No Data",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text("      Sleep data unavailable"),
        ),
        _add(),
       
      ],
    ));
  }

  ////--- End Monday --//////
  ///
  ///
  ///
  ////--- Start Monday --//////
  Widget _tuesday() {
     return SingleChildScrollView(
        child: Column(
      children: [
        _space(),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "  No Data",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text("      Sleep data unavailable"),
        ),
        _add(),
        
      ],
    ));
  }

  ////--- End Monday --//////
  ////--- Start Monday --//////
  Widget _wednesday() {
     return SingleChildScrollView(
        child: Column(
      children: [
        _space(),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "  No Data",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text("      Sleep data unavailable"),
        ),
        _add(),
        
      ],
    ));
  }

  ////--- End Monday --//////
  ///
  ///
  ///
  ////--- Start Monday --//////
  Widget _thursday() {
     return SingleChildScrollView(
        child: Column(
      children: [
        _space(),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "  No Data",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text("      Sleep data unavailable"),
        ),
        _add(),
        
      ],
    ));
  }

  ////--- End Monday --//////
  ///
  ///
  ///
  ////--- Start Monday --//////
  Widget _friday() {
     return SingleChildScrollView(
        child: Column(
      children: [
        _space(),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "  No Data",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text("      Sleep data unavailable"),
        ),
        _add(),
        
      ],
    ));
  }

  ////--- End Monday --//////
  ///
  ///

  ///
  ///
  ////--- Start Monday --//////
  Widget _saturday() {
     return SingleChildScrollView(
        child: Column(
      children: [
        _space(),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "  No Data",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text("      Sleep data unavailable"),
        ),
        _add(),
        
      ],
    ));
  }

  ////--- End Monday --//////
  ///
  ///
  ////--- Start Monday --//////
  Widget _sunday() {
     return SingleChildScrollView(
        child: Column(
      children: [
        _space(),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "  No Data",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text("      Sleep data unavailable"),
        ),
        _add(),
        
      ],
    ));
  }

  ////--- End Monday --//////
  ///
  ///
  Widget _space() {
    return Container(
      height: 30.0,
    );
  }
}

