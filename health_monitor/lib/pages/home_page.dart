import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<Homepage> {
  _HomePageState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health Monitor'),
        centerTitle: true,
          
      ),
      body: Column(
        children: [
          _top(),
          _space(),
          _middle(),
          _space(),
          _button(),
          _space(),
          _end()
        ],
      ),
    );
  }


// Widget _top() {
//   return Container(
//     padding: const EdgeInsets.all(20),
//     width: double.infinity,
//     height: 200,
//     color: Colors.blue,
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Text('Heart Rates', style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 252, 251, 251))),
//         const SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: () {
//             // Add your button press logic here
//           },
//           child: const Text('View Heart Rate'),
//         ),
//       ],
//     ),
//   );
// }

Widget _top() {
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
        image: AssetImage('assets/images/heart.png'),
        fit: BoxFit.cover,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Heart Rates',
          style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 0, 0, 0)),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=> const HeartRate()),
            );
          },
          child: const Text('View Heart Rate'),
        ),
      ],
    ),
  );
}



  Widget _space(){
    return Container(
      height: 30.0,
    );
  }

Widget _middle() {
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
        image: AssetImage('assets/images/steps.jpeg'),
        fit: BoxFit.cover,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Steps',
          style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 0, 0, 0)),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
             Navigator.push(context, 
            MaterialPageRoute(builder: (context)=> const Steps()),
            );
          },
          child: const Text('View Steps Course'),
        ),
      ],
    ),
  );
}


Widget _button() {
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
        image: AssetImage('assets/images/sleep.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Sleep',
          style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 252, 251, 251)),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
             Navigator.push(context, 
            MaterialPageRoute(builder: (context)=> const Sleep()),
            );
          },
          child: const Text('View sleep Stats'),
        ),
      ],
    ),
  );
}

  // Widget _end(){
  //   return const Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
  //     children: [
  //       Icon(Icons.favorite,size: 40,),
  //       SizedBox(width: 10.0),
  //       Icon(Icons.home,size: 40,),
  //       SizedBox(width: 10.0),
  //       Icon(Icons.menu,size: 40,),
  //     ],
  //   );
  // }
Widget _end() {
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      const SizedBox(width: 10.0,),
      IconButton(
        icon: const Icon(Icons.favorite, color: Colors.red, size: 40,),
       onPressed: () {
        // Favorites page
        Navigator.push(context, 
        MaterialPageRoute(builder: (context)=> const Favorite()));
        },
      ),
      const SizedBox(width: 10.0),
      IconButton(
        icon: const Icon(Icons.home, color: Colors.blue, size: 40,),
        onPressed: () {
          // Do something
        },
      ),
      const SizedBox(width: 10.0),
      IconButton(
        icon: const Icon(Icons.person_3_rounded, color: Colors.green, size: 40,),
       onPressed: () {
        // Favorites page
        Navigator.push(context, 
        MaterialPageRoute(builder: (context)=> const Profile()));
        },
      ),
    ],
  );
}



}


/////////////////// HeartRate Start //////////////////////////////////
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
    _pulseTx()
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

  Widget _pulseTx(){
    return Container(
      child:  Column(
        children: [
        const Text("current pulse",style: TextStyle(fontStyle: FontStyle.italic),),
        const Text("89 BPM",style: TextStyle(fontStyle: FontStyle.normal, fontSize: 80.0 ,color: Colors.red,),),
        ElevatedButton(onPressed: (){
          // print("Connect your accessory");
        },
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
           child: const Text("Check my pulse",style: TextStyle(color: Colors.white)),
        )
        ],
      ),
    );
  }
} 
/////////////////// HeartRate End //////////////////////////////////


/////////////////// Steps Start //////////////////////////////////
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
/////////////////// Steps End //////////////////////////////////


/////////////////// Sleep Start //////////////////////////////////
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
/////////////////// Sleep End //////////////////////////////////
///
///
///
////////////////////// Favorite Start //////////////////////////////////
class Favorite extends StatelessWidget{
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor: Colors.red,
  leading: IconButton(
    icon: const Icon(Icons.home),
    onPressed: () {
      Navigator.pop(context);
    },
  ),
  title: const Text("Favorites"),
),
    );
  }
}

////////////////////// Favorite End //////////////////////////////////
///
///
///
///////////////////////// Profile Start //////////////////////////////////

class Profile extends StatelessWidget{
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor: Colors.green,
  leading: IconButton(
    icon: const Icon(Icons.home),
    color: Colors.white,
    onPressed: () {
      Navigator.pop(context);
    },
  ),
  title: const Text("Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
),
body: Column(children: [
    _avatar(),
    _ProfileInfo(),
    _edit(),
]),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _ProfileInfo(){
return Form(
  child: Column(
    children: [
      TextFormField(
        readOnly: true,
        initialValue: 'Steve Jobs',
        decoration: const InputDecoration(
          labelText: 'Name',
        ),
      ),
      
      TextFormField(
         readOnly: true,
        initialValue: 'steve.jobs@icloud.com',
        decoration: const InputDecoration(
          labelText: 'Email',
        ),
      ),

      TextFormField(
         readOnly: true,
        initialValue: '55' ,
        decoration: const InputDecoration(
          labelText: 'Age',
        ),
      ),

       TextFormField(
          readOnly: true,
        initialValue: '3-10-1979',
        decoration: const InputDecoration(
          labelText: 'Date of Birth',
        ),
      ),

       TextFormField(
          readOnly: true,
        initialValue: '68kg',
        decoration: const InputDecoration(
          labelText: 'Weight',
        ),
      ),
       TextFormField(
          readOnly: true,
        initialValue: '68cm',
        decoration: const InputDecoration(
          labelText: 'Height',
        ),
      ),
    ],
  ),
);
}

Widget _avatar(){
  return const Column( 
    children:[ Center(
    child: CircleAvatar(
      radius: 95.0,
      backgroundImage: 
      AssetImage('assets/images/jobs.JPG'),
      ),
  ),Text("change picture", style: TextStyle(color: Colors.blue,))
  ]
  );
}

Widget _edit(){
  return ElevatedButton(onPressed: (){}, 
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.green)
  ),child: const Text("Edit details")
  );
}
}