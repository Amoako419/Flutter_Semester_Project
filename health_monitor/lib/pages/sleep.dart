import 'package:flutter/material.dart';

class Sleep extends StatelessWidget{
  const Sleep({super.key});

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
  title: const Text("Sleep"),
),
    );
  }
} 