import 'package:flutter/material.dart';
import 'package:profile/main.dart';

class DisplayDetails extends StatefulWidget {
  const DisplayDetails({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DisplayDetailsState();
  }
}


int x = 0;
int y = 1;

List details = [];
List users = [];

class _DisplayDetailsState extends State<DisplayDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: const Icon(Icons.home),
        ),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(users[index]['name']),
              leading: const Icon(Icons.account_circle),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    users.removeAt(index);
                  });
                },
                icon: const Icon(Icons.delete, color: Colors.red),
              ),
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text('About Me: ${users[index]['aboutMe']}'),
                        Text('Email Address: ${users[index]['email']}'),
                        Text('Birthday: ${users[index]['birthDate']}'),
                        Text('Age: ${users[index]['age']}'),
                        Text('Sex: ${users[index]['sex']}'),
                        Text('Gender: ${users[index]['gender']}'),
                        Text('Occupation: ${users[index]['occupation']}'),
                        Text('Phone Number: ${users[index]['phoneNum']}'),
                        Text('Status: ${users[index]['status']}'),
                        Text('Religion: ${users[index]['religion']}'),
                        Text('Hobbies: ${users[index]['hobbies']}'),
                      ],
                    ))
              ],
            );
          }
          ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 30, 170, 156),
        foregroundColor: Colors.black,
        onPressed: () async {
          details.add(await Navigator.pushNamed(context, '/second'));
          setState(() {
            if (y == 1) {
              x = 0;
            }
            if (y > 1) {
              x++;
            }
            users = details
                .map((item) => {
              'aboutMe': item[0]['aboutMe'],
              'name': item[0]['name'],
              'email': item[0]['email'],
              'bday': item[0]['bday'],
              'age': item[0]['age'],
              'sex': item[0]['sex'],
              'gender': item[0]['gender'],
              'occupation': item[0]['occupation'],
              'phone': item[0]['phone'],
              'status': item[0]['status'],
              'religion': item[0]['religion'],
              'hobbies': item[0]['hobbies']
            })
                .toList();
            y++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
