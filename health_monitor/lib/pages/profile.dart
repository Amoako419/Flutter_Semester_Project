import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String name;
  final String email;
  final  age;
  final String bloodType;
  final emergencyContactName;
  final emergencyContactNumber; 
  final weight;
  final height;

  const Profile({super.key, Key, required this.name ,required this.email, required this.age, required this.bloodType, required this.emergencyContactName, required this.emergencyContactNumber, required this.weight, required this.height});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            "Profile",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            _avatar(),
            _ProfileInfo(),
            _edit(),
          ]),
        ));
  }

  // ignore: non_constant_identifier_names
  Widget _ProfileInfo() {
    return Form(
      child: Column(
        children: [
          TextFormField(
            readOnly: true,
            initialValue: name,
            decoration: const InputDecoration(
              labelText: 'Name',
            ),
          ),
          TextFormField(
            readOnly: true,
            initialValue: email,
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
          ),
          TextFormField(
            readOnly: true,
            initialValue: 'Male',
            decoration: const InputDecoration(
              labelText: 'Sex',
            ),
          ),
          TextFormField(
            readOnly: true,
            initialValue: age,
            decoration: const InputDecoration(
              labelText: 'Age',
            ),
          ),
          TextFormField(
            readOnly: true,
            initialValue: weight,
            decoration: const InputDecoration(
              labelText: 'Weight',
            ),
          ),
          TextFormField(
            readOnly: true,
            initialValue: height,
            decoration: const InputDecoration(
              labelText: 'Height',
            ),
          ),
          TextFormField(
            readOnly: true,
            initialValue: bloodType,
            decoration: const InputDecoration(
              labelText: 'Blood Type',
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Text("Emergency Contacts",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
          ),
          TextFormField(
            readOnly: true,
            initialValue: emergencyContactName,
            decoration: const InputDecoration(
              labelText: 'Emergency Name',
            ),
          ),
          TextFormField(
            readOnly: true,
            initialValue: emergencyContactNumber,
            decoration: const InputDecoration(
              labelText: 'Emergency Contact',
            ),
          ),
        ],
      ),
    );
  }

  Widget _avatar() {
    return const Column(children: [
      Center(
        child: CircleAvatar(
          radius: 95.0,
          backgroundImage: AssetImage('assets/images/jobs.JPG'),
        ),
      ),
      Text("change picture",
          style: TextStyle(
            color: Colors.blue,
          ))
    ]);
  }

  Widget _edit() {
    return ElevatedButton(
        onPressed: () {
        //   Navigator.push(context, 
        //  MaterialPageRoute(builder: (context)=> FormPage()));
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green)),
        child: const Text("Edit details"));
  }
}
