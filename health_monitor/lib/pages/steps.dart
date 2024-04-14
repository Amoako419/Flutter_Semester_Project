import "package:flutter/material.dart";

class Steps extends StatelessWidget {
  const Steps({super.key});

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
        title: const Text("Steps"),
        bottom: const TabBar(
          tabs: [
          Tab(text: "M"),
          Tab(text: "T"),
          Tab(text: "W"),
          Tab(text: "T"),
          Tab(text: "F"),
          Tab(text: "S"),
          Tab(text: "S"),

        ]
        ),
         actions: [
IconButton(
                  icon: const Icon(Icons.info),
                  onPressed: () {
                    // Show about sleep dialog
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('About Steps'),
                          content: const Text(
                            'Step count is the number of steps you take throughout the day. Pedometers and digital activity trackers can help you determine your step count. These devices count steps for any activity that involves step-like movement, including walking, running, stair-climbing, cross-country skiing, and even movement as you go about your daily chores.',
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
      ],)
      )));
  }

  ////--- Start Monday --//////
  Widget _monday() {
   return const Column(
    children: [
      Text("Monday Demo")
    ],
   );
  }
  ////--- End Monday --//////
  ///
  ///
  ///
  ////--- Start Monday --//////
  Widget _tuesday() {
   return const Column(
    children: [
      Text("Tuesday Demo")
    ],
   );
  }
  ////--- End Monday --//////
  ////--- Start Monday --//////
  Widget _wednesday() {
   return const Column(
    children: [
      Text("Wednesday Demo")
    ],
   );
  }
  ////--- End Monday --//////
  ///
  ///
  ///
  ////--- Start Monday --//////
  Widget _thursday() {
   return const Column(
    children: [
      Text("Thursday Demo")
    ],
   );
  }
  ////--- End Monday --//////
  ///
  ///
  ///
  ////--- Start Monday --//////
  Widget _friday() {
   return const Column(
    children: [
      Text("Friday Demo")
    ],
   );
  }
  ////--- End Monday --//////
  ///
  ///

  ///
  ///
  ////--- Start Monday --//////
  Widget _saturday() {
   return const Column(
    children: [
      Text("Saturday Demo")
    ],
   );
  }
  ////--- End Monday --//////
  ///
  ///
  ////--- Start Monday --//////
  Widget _sunday() {
   return const Column(
    children: [
      Text("Sunday Demo")
    ],
   );
  }
  ////--- End Monday --//////
}
