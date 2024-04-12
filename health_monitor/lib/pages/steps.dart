import "package:flutter/material.dart";

class Steps extends StatelessWidget {
  const Steps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: TabBarView(children: [
           _monday(),
          _tuesday(),
          _wednesday(),
          _thursday(),
          _friday(),
          _saturday(),
          _sunday()
      ],)
    );
  }

  ////--- Start Monday --//////
  Widget _monday() {
   return Container(

   );
  }
  ////--- End Monday --//////
  ///
  ///
  ///
  ////--- Start Monday --//////
  Widget _tuesday() {
   return Container(

   );
  }
  ////--- End Monday --//////
  ////--- Start Monday --//////
  Widget _wednesday() {
   return Container(

   );
  }
  ////--- End Monday --//////
  ///
  ///
  ///
  ////--- Start Monday --//////
  Widget _thursday() {
   return Container(

   );
  }
  ////--- End Monday --//////
  ///
  ///
  ///
  ////--- Start Monday --//////
  Widget _friday() {
   return Container(

   );
  }
  ////--- End Monday --//////
  ///
  ///

  ///
  ///
  ////--- Start Monday --//////
  Widget _saturday() {
   return Container(

   );
  }
  ////--- End Monday --//////
  ///
  ///
  ////--- Start Monday --//////
  Widget _sunday() {
   return Container(

   );
  }
  ////--- End Monday --//////
}
