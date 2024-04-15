import 'package:flutter/material.dart';

class Water extends StatefulWidget {
  const Water({super.key});

  @override
  State<Water> createState() => _WaterState();
}

class _WaterState extends State<Water> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },),
        title: const Text("Water Intake"),
                   actions: [
IconButton(
                  icon: const Icon(Icons.info),
                  onPressed: () {
                    // Show about sleep dialog
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('About Water Intake'),
                          content: const Text(
                            'For your body to function properly, you must replenish its water supply by consuming beverages and foods that contain water. You may need to modify your total fluid intake depending on how active you are, the climate you live in, your health status, and if you are pregnant or breastfeeding. Food provides about 20 per cent of total water intake. Many fruits and vegetables, such as watermelon and spinach, are 90 per cent or more water by weight.',
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
    );
  }


  
}