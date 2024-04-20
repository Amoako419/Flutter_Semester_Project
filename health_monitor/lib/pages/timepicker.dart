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
             Text('From: ${_time.hour}:${_time.minute}',style: const TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold),),
        ElevatedButton(
            onPressed: _showTimePicker,
            child: const Text('Pick Time'),
        ),
        Padding(padding: EdgeInsets.all(10)),
              Text('To: ${_time2.hour}:${_time2.minute}',style: const TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold),),
        ElevatedButton(
            onPressed: _TimePicker,
            child: const Text('Pick Time'),
        ),
          ],
        ),
      );
    }

    
}