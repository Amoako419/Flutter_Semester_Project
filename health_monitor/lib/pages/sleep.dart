import 'package:flutter/material.dart';

class Sleep extends StatelessWidget {
  const Sleep({super.key});

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
            )));
  }

  ////--- Start Monday --//////
  Widget _monday() {
    return Column(
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
    );
  }
  Widget _add(){
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
      color: Colors.cyan
    ),
    child:  const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 120.0,
          backgroundImage: AssetImage('bed.jpg'),
        )
      ],
    ),
    );
  }

  ////--- End Monday --//////
  ///
  ///
  ///
  ////--- Start Monday --//////
  Widget _tuesday() {
    return const Column(
      children: [Text("Tuesday Demo")],
    );
  }

  ////--- End Monday --//////
  ////--- Start Monday --//////
  Widget _wednesday() {
    return const Column(
      children: [Text("Wednesday Demo")],
    );
  }

  ////--- End Monday --//////
  ///
  ///
  ///
  ////--- Start Monday --//////
  Widget _thursday() {
    return const Column(
      children: [Text("Thursday Demo")],
    );
  }

  ////--- End Monday --//////
  ///
  ///
  ///
  ////--- Start Monday --//////
  Widget _friday() {
    return const Column(
      children: [Text("Friday Demo")],
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
      children: [Text("Saturday Demo")],
    );
  }

  ////--- End Monday --//////
  ///
  ///
  ////--- Start Monday --//////
  Widget _sunday() {
    return const Column(
      children: [Text("Sunday Demo")],
    );
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
