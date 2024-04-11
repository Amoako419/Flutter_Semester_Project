import "package:flutter/material.dart";

class Steps extends StatelessWidget{
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
),
    );
  }
} 