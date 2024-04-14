import 'package:flutter/material.dart';

class Favorite extends StatelessWidget{
   const Favorite({super.key});

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor: Colors.red,
  title: const Text("Favorites"),
),
  body: const Center(
    child: Text("Your Favorites are empty"),
    
  ),
  
    );
  }
}