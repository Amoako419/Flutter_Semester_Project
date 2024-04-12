// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:health_monitor/pages/home_page.dart';

void main() {
  runApp(const MaterialApp(
     title: 'Health Monitor',
     home: Homepage(),
     ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
return  MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Health Monitor',
      home: Homepage(),
    );
  }
}
