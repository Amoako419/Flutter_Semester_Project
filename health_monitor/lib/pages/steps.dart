import "package:flutter/material.dart";

class Steps extends StatefulWidget {
  const Steps({super.key});

  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
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
                ],
              ),
              floatingActionButton: const FloatingActionButton(
                tooltip: 'favorite', // used by assistive technologies
                onPressed: null,
                child: Icon(Icons.favorite),
              ),
            )));
  }

  ////--- Start Monday --//////
  Widget _monday() {
    return Column(
      children: [
        _daily(500),
      ],
    );
  }

  ////--- End Monday --//////
  ///
  ///
  ///
  ////--- Start Monday --//////
  Widget _tuesday() {
    return Column(
      children: [
        _daily(400),
      ],
    );
  }

  ////--- End Monday --//////
  ////--- Start Monday --//////
  Widget _wednesday() {
    return Column(
      children: [
        _daily(900),
      ],
    );
  }

  ////--- End Monday --//////
  ///
  ///
  ///
  ////--- Start Monday --//////
  Widget _thursday() {
    return Column(
      children: [
        _daily(600),
      ],
    );
  }

  ////--- End Monday --//////
  ///
  ///
  ///
  ////--- Start Monday --//////
  Widget _friday() {
    return Column(
      children: [
        _daily(900),
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
    return Column(
      children: [
        _daily(600),
      ],
    );
  }

  ////--- End Monday --//////
  ///
  ///
  ////--- Start Monday --//////
  Widget _sunday() {
    return Column(
      children: [
        _daily(300),
      ],
    );
  }

  ////--- End Monday --//////
  ///
  ///
  ///
  ///
  ///DailyWidget
  Widget _daily(int steps) {
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
            ),
            Text(
              "Steps",
              style: TextStyle(color: Colors.pink, fontSize: 16.0),
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
