import 'package:flutter/material.dart';
import 'package:profile/display_details.dart';
import 'package:profile/main.dart';
import 'package:profile/profile.dart';

class NewUserProfile extends StatefulWidget {
  const NewUserProfile({Key? key}) : super(key: key);

  @override
  State<NewUserProfile> createState() => _NewUserProfileState();
}

class _NewUserProfileState extends State<NewUserProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final aboutMe = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final birthdayController = TextEditingController();
  final ageController = TextEditingController();
  final sexController = TextEditingController();
  final genderController = TextEditingController();
  final occupationController = TextEditingController();
  final numberController = TextEditingController();
  final statusController = TextEditingController();
  final religionController = TextEditingController();
  final hobbiesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Profile'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: aboutMe,
                decoration: InputDecoration(
                  icon: const Icon(Icons.description),
                  hintText: 'I am ....',
                  labelText: 'About Me',
                  suffixIcon: aboutMe.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                          icon: const Icon(Icons.close),
                          color: Colors.red,
                          onPressed: () => aboutMe.clear(),
                        ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please write something about yourself.';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.account_circle),
                  hintText: 'John Doe',
                  labelText: 'Name',
                  suffixIcon: nameController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                          icon: const Icon(Icons.close),
                          color: Colors.red,
                          onPressed: () => nameController.clear(),
                        ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.done,
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z.]+$').hasMatch(value)) {
                    return 'Please enter your name';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.email),
                  hintText: 'johndoe@gmail.com',
                  labelText: 'Email',
                  suffixIcon: emailController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                          icon: const Icon(Icons.close),
                          color: Colors.red,
                          onPressed: () => emailController.clear(),
                        ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                onSaved: (String? value) {},
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[\w-]+@([\w-]+\.)+[\w]{2,4}')
                          .hasMatch(value)) {
                    return 'Email is required';
                  }

                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: birthdayController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.calendar_month),
                  hintText: '2001-10-31',
                  labelText: 'Birthdate',
                  suffixIcon: birthdayController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                          icon: const Icon(Icons.close),
                          color: Colors.red,
                          onPressed: () => birthdayController.clear(),
                        ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                keyboardType: TextInputType.datetime,
                textInputAction: TextInputAction.done,
                onSaved: (String? value) {},
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[0-9]{4}-(((0[13578]|(10|12))-(0[1-9]|[1-2][0-9]|3[0-1]))|(02-(0[1-9]|[1-2][0-9]))|((0[469]|11)-(0[1-9]|[1-2][0-9]|30)))$')
                          .hasMatch(value)) {
                    return 'Birthdate is required';
                  }

                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: ageController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.numbers),
                  hintText: '21',
                  labelText: 'Age',
                  suffixIcon: ageController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                          icon: const Icon(Icons.close),
                          color: Colors.red,
                          onPressed: () => ageController.clear(),
                        ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                onSaved: (String? value) {},
                validator: (value) {
                  if (value!.isEmpty || !RegExp(r'[0-9]+$').hasMatch(value)) {
                    return 'Age is required';
                  }

                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: sexController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.female),
                  hintText: 'F',
                  labelText: 'Sex',
                  suffixIcon: sexController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                          icon: const Icon(Icons.female),
                          color: Colors.red,
                          onPressed: () => sexController.clear(),
                        ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(width: 1.0, color: Colors.black),
                  ),
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                onSaved: (String? value) {},
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z-0-9]+$').hasMatch(value)) {
                    return 'Sex is required';
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: genderController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.flag_outlined),
                  hintText: 'Bisexual',
                  labelText: 'Gender',
                  suffixIcon: genderController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                    icon: const Icon(Icons.close),
                    color: Colors.red,
                    onPressed: () => genderController.clear(),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                    const BorderSide(width: 1.0, color: Colors.black),
                  ),
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                onSaved: (String? value) {},
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z-0-9]+$').hasMatch(value)) {
                    return 'Gender is required';
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: occupationController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.work),
                  hintText: 'Student',
                  labelText: 'Occupation',
                  suffixIcon: occupationController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                    icon: const Icon(Icons.close),
                    color: Colors.red,
                    onPressed: () => occupationController.clear(),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                    const BorderSide(width: 1.0, color: Colors.black),
                  ),
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                onSaved: (String? value) {},
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z-0-9]+$').hasMatch(value)) {
                    return 'Occupation is required';
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: numberController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.phone),
                  hintText: '+639 123 4567',
                  labelText: 'Phone Number',
                  suffixIcon: numberController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                    icon: const Icon(Icons.close),
                    color: Colors.red,
                    onPressed: () => numberController.clear(),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                        width: 1.0,
                        color: Colors.black
                    ),
                  ),
                ),
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.done,
                onSaved: (String? value) {},
                validator: (value) {
                  if(value!.isEmpty ||
                      !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s/0-9]+$')
                          .hasMatch(value)) {
                    return 'Phone number is required';
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: statusController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.question_mark),
                  hintText: 'Single',
                  labelText: 'Status',
                  suffixIcon: statusController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                    icon: const Icon(Icons.close),
                    color: Colors.red,
                    onPressed: () => statusController.clear(),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                    const BorderSide(width: 1.0, color: Colors.black),
                  ),
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                onSaved: (String? value) {},
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z-0-9]+$').hasMatch(value)) {
                    return 'Status is required';
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: religionController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.question_mark),
                  hintText: 'Catholic',
                  labelText: 'Religion',
                  suffixIcon: religionController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                    icon: const Icon(Icons.close),
                    color: Colors.red,
                    onPressed: () => religionController.clear(),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                    const BorderSide(width: 1.0, color: Colors.black),
                  ),
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                onSaved: (String? value) {},
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z-0-9]+$').hasMatch(value)) {
                    return 'Religion is required';
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: hobbiesController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.headphones),
                  hintText: 'Listening to music',
                  labelText: 'Hobbies',
                  suffixIcon: hobbiesController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                    icon: const Icon(Icons.close),
                    color: Colors.red,
                    onPressed: () => hobbiesController.clear(),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                    const BorderSide(width: 1.0, color: Colors.black),
                  ),
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                onSaved: (String? value) {},
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z-0-9]+$').hasMatch(value)) {
                    return 'Hobbies is required';
                  }
                  return null;
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: const Text(
                  'Submit',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20),
                ),
                onPressed: () {
                  if(_formKey.currentState!.validate()) {
                    List displayDetails = <Map<String, dynamic>>[
                      {
                        'aboutMe': aboutMe.text,
                        'name': nameController.text,
                        'email': emailController.text,
                        'birthDate': birthdayController.text,
                        'age': ageController.text,
                        'sex': sexController.text,
                        'gender': genderController.text,
                        'occupation': occupationController.text,
                        'phoneNum': numberController.text,
                        'status': statusController.text,
                        'religion':  religionController.text,
                        'hobbies': hobbiesController.text,
                      }
                    ];
                    Navigator.pop(context, displayDetails);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
