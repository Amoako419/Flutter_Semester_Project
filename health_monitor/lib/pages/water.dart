import 'package:flutter/material.dart';

class Water extends StatefulWidget {
  const Water({super.key});

  @override
  State<Water> createState() => _WaterState();
}


void _increment(value){
  value = value + 0.1;
  if (value > 1){
    value = 0;
  }
  else (
     value = value + 0.1
  );
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
                  body: SingleChildScrollView(
                    child:  Column(
                      children: [
                        _textt(),
                        _circle(0.7),
                      ],
                    ),
                  ),
                     floatingActionButton: const FloatingActionButton(
        tooltip: 'favorite', // used by assistive technologies
        onPressed: null,
        child: Icon(Icons.favorite_outline),
      ),
    );
  }
  Widget _textt(){
    return Container(
      child: Center(child: Text("Add water intake", style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),)),
    );
  }

  Widget _circle(double value){
    
  //  class BigCircularProgressIndicator extends StatelessWidget {
  // final double value; // Progress value between 0.0 and 1.0
  // final Color backgroundColor; // Background color of the indicator
  // final Color valueColor; // Color of the progress arc

  // const BigCircularProgressIndicator({
  //   Key? key,
  //   required this.value,
  //   this.backgroundColor = Colors.grey,
  //   this.valueColor = Colors.blue,
  // }) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(38.0),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: CircularProgressIndicator(
                strokeWidth: 10, // Adjust stroke width for a bigger indicator
                value: value,
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation(Colors.blue), // Use AlwaysStoppedAnimation for fixed color
              ),
              
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: ElevatedButton(onPressed: (){
                _increment(value);
              },
              child: const Text("Add water"),),
            )
          ],
        ),
      
      ),
    );
  }
}

  // }

  
// }