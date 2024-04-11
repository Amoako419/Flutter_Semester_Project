import 'package:flutter/material.dart';

class HeartRate extends StatelessWidget{
  const HeartRate({super.key});

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
  title: const Text("Heart Rate"),
),
  body: Column(
    children: [_pulseIm(),
    // _pulseTx()
     const Text("current pulse",style: TextStyle(fontStyle: FontStyle.italic),),
      const Text("89 BPM",style: TextStyle(fontStyle: FontStyle.normal, fontSize: 80.0 ,color: Colors.red,),),
      ElevatedButton(onPressed: (){
        final snackBar = SnackBar(content: const Text("Connect to your device"),
        action: SnackBarAction(label: 'Done',
        onPressed: (){},
        ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
         child: const Text("Check my pulse",style: TextStyle(color: Colors.white)),
      ),
      _space(),
      history()

    ],
  )
  
    );
  }
  Widget _pulseIm(){
    return Container(
    padding: const EdgeInsets.all(20),
    width: double.infinity,
    height: 200,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      image: DecorationImage(
        image: AssetImage('assets/images/pulse.webp'),
        fit: BoxFit.cover,
      ),
    ),
    );
  }


  Widget history(){
    return const Column(
      children: [
        Text('History',style: TextStyle(fontStyle: FontStyle.normal, fontSize: 30.0 ,color: Colors.black,decoration: TextDecoration.underline)),
        Text('No recent heart rates available',style: TextStyle(fontStyle: FontStyle.italic),)
      ],
    );
  }

   Widget _space(){
    return Container(
      height: 30.0,
    );
  }
} 