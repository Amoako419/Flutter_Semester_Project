import 'package:flutter/material.dart';
import 'package:health_monitor/pages/profile.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>(); // Key for form validation
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _ageController = TextEditingController();
  final _bloodTypeController = TextEditingController();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  final _emergencyContactNameController = TextEditingController();
  final _emergencyContactPhoneController = TextEditingController();


  // ignore: prefer_final_fields
  String _name='', _email='', _age='', _bloodType='', _emergencyContactName='', _emergencyContactPhone='',_weight='',_height='';
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _ageController.dispose();
    _bloodTypeController.dispose();
    _emergencyContactNameController.dispose();
    _emergencyContactPhoneController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set up your medical form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Enter your name:',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name.';
                  }
                  return null;
                },
                onSaved: (newValue) => _name = newValue!,
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Enter your email:',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email.';
                  } else if (!value.contains('@')) {
                    return 'Please enter a valid email address.';
                  }
                  return null;
                },
                onSaved: (newValue) => _email = newValue!,
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                controller: _ageController,
                keyboardType: TextInputType.number, // Allow only numbers
                decoration: const InputDecoration(
                  labelText: 'Enter your age:',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age.';
                  } else {
                    try {
                      int age = int.parse(value);
                      if (age <= 0) {
                        return 'Please enter a valid age.';
                      }
                    } catch (e) {
                      return 'Please enter a valid age.';
                    }
                  }
                  return null;
                },
                onSaved: (newValue) => _age = newValue!,
              ),
              const SizedBox(height: 10.0),
              // DropdownButtonFormField<String>(
              //   value: _sex,
              //   hint: Text('Select Sex'),
              //   items: ['Male', 'Female', 'Non-binary', 'Prefer not to say']
              //       .map((String sex) => DropdownMenuItem<String>(
              //             value: sex,
              //             child: Text(sex),
              //           ))
              //       .toList(),
              //   onChanged: (value) {
              //     setState(() {
              //       _sex = value!;
              //     });
              //   },
              //   validator: (value) {
              //     if (value == null || value.isEmpty) {
              //       return 'Please select your sex.';
              //     }
              //     return null;
              //   },
              // ),
              const SizedBox(height: 10.0),
              TextFormField(
                controller: _bloodTypeController,
                decoration: const InputDecoration(
                  labelText: 'Enter your blood type (optional):',
                ),
                onSaved: (newValue) => _bloodType = newValue!,
              ),
              //HeightFormField
                 const SizedBox(height: 10.0),
              TextFormField(
                controller: _heightController,
                decoration: const InputDecoration(
                  labelText: 'Enter your height(optional):',
                ),
                onSaved: (newValue) => _height = newValue!,
              ),

              //weightFormField
                  const SizedBox(height: 10.0),
              TextFormField(
                controller: _weightController,
                decoration: const InputDecoration(
                  labelText: 'Enter your weight (optional):',
                ),
                onSaved: (newValue) => _weight = newValue!,
              ),

              





              const SizedBox(height: 10.0),
              const Text('Emergency Contact:'),
              const SizedBox(height: 5.0),
              TextFormField(
                controller: _emergencyContactNameController,
                decoration: const InputDecoration(
                  labelText: 'Name:',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter emergency contact name.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                controller: _emergencyContactPhoneController,
                decoration: const InputDecoration(
                  labelText: 'Number:',
                ),
              ),
                ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save(); // Save form state
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile(name: _name, email: _email, age: _age, bloodType: _bloodType, emergencyContactName: _emergencyContactName, emergencyContactNumber: _emergencyContactPhone,weight: _weight,height: _height,),
            

                      ),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          )
        ),
      )
    );
  }
}