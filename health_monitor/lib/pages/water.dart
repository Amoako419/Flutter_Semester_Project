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
        leading: const Icon(Icons.arrow_back_ios_new),
        title: Text("Water Intake"),
                   actions: [
IconButton(
                  icon: const Icon(Icons.info),
                  onPressed: () {
                    // Show about sleep dialog
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('About Sleep'),
                          content: const Text(
                            'Sleep provides insight into your sleep habits.Sleep trackers and monitors can help you determine the amount of time you are in bed and asleep.These devices estimate your time in bed and your time asleep by analysing changes in physical activity, including movement during the night. You can also keep track of your sleep by entering your own estimation ofyour time in bed and time asleep manually.The In Bed period reflects the time period you are lying in bed with the intention to sleep. For most people, it starts when you turn the lights off and it ends when you get out of bed. The Asleep period reflects the period(s) you are asleep.',
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