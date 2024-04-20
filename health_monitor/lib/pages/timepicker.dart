
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimePickerWidget extends StatefulWidget {
    const TimePickerWidget({Key? key}) : super(key: key);

    @override
    State<TimePickerWidget> createState() => _TimePickerWidgetState();
     
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
 TimeOfDay _time = const TimeOfDay(hour: 10, minute: 30);
  TimeOfDay _time2 = const TimeOfDay(hour: 12, minute: 00);

    void _showTimePicker() {
    showTimePicker(
        context: context,
        initialTime: _time,
    ).then((newTime) {
        if (newTime != null) {
        setState(() {
            _time = newTime;
        });
        }
    });
    }

    void _TimePicker() {
    showTimePicker(
        context: context,
        initialTime: _time2,
    ).then((newTime) {
        if (newTime != null) {
        setState(() {
            _time2 = newTime;
        });
        }
    });}
      bool switchValue = false;

      void _snackB(){
        if (switchValue == true){
              final snackBar = SnackBar(
            content: const Text('You will be notified'),
            action: SnackBarAction(
              label: 'Done',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
        else{
              final snackBar = SnackBar(
            content: const Text('You will not be notified'),
            action: SnackBarAction(
              label: 'Done',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      }
  
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Set Bed timer"),
      ),
      body: 
        Column(
        children: [
          _body()
        ],
      ),
    );
    }
    Widget _body(){
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
        color: Color.fromARGB(255, 230, 221, 221)),
        child: Column(
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('From: ${_time.hour}:${_time.minute}',style: const TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold),),ElevatedButton(
            onPressed: _showTimePicker,
            child: const Text('Pick Time'),
        ),
               ],
             ),
        
        Padding(padding: EdgeInsets.all(10)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('To: ${_time2.hour}:${_time2.minute}',style: const TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold),),  ElevatedButton(
            onPressed: _TimePicker,
            child: const Text('Pick Time'),
        ),
                ],
              ),
        const Padding(padding: EdgeInsets.all(10)),
         
         Row(
           children: [
            
             CupertinoSwitch(
              // This bool value toggles the switch.
              value: switchValue,
              activeColor: CupertinoColors.activeBlue,
              onChanged: (bool? value) {
                // This is called when the user toggles the switch.
                setState(() {
                  switchValue = value ?? false;
                });
              },
                     ),
            const Text("Notify me"),
           ],
         ),

         ElevatedButton(
    style: ElevatedButton.styleFrom(
    primary: Colors.blue,
    onPrimary: Colors.white,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
    ),
    ),
    onPressed: () {
      _snackB();
    },
    child: const Text('Save'),
)


          ],
        ),
      );
    }

    
}