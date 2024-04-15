// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:health_monitor/pages/firstPage.dart';
import 'package:health_monitor/pages/medicalID.dart';


void main() {
  runApp( MaterialApp(
     title: 'Health Monitor',
     home: FirstPage(),
     ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
return  MaterialApp(
      debugShowCheckedModeBanner:false,
      initialRoute: '/',
      routes: {
        '/':(context) => FormPage()
      },
      title: 'Health Monitor',
      home: FirstPage(),
    );
  }
}


