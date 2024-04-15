import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
            initialValue: 'Male',
            decoration: const InputDecoration(
              labelText: 'Sex',
            ),
          ),
          TextFormField(
            readOnly: true,
            initialValue: '55',
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
          TextFormField(
            readOnly: true,
            initialValue: 'Not set',
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
            initialValue: 'Not set',
            decoration: const InputDecoration(
              labelText: 'Emergency Contact1',
            ),
          ),
          TextFormField(
            readOnly: true,
            initialValue: 'Not set',
            decoration: const InputDecoration(
              labelText: 'Emergency Contact2',
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
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green)),
        child: const Text("Edit details"));
  }
}
