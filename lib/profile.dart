import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        leading: const Icon(Icons.person),
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          CircleAvatar(
            radius: 50,
            child: ClipOval(
              child: Image.asset('assets/dagondon/d.jpg'),
            ),
          ),
          const SizedBox(
              height: 8),
          const Center(
            child: Text(
              'Angel Deanielle R. Dagondon',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          const SizedBox(
              height: 11
          ),
          const Center(
            child: Text(
              '3rd Yr - IT Student',
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
          ),
          const SizedBox(
              height: 15
          ),
          const Text(
              "About Me",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),
            ),
          const SizedBox(
              height: 18
          ),
          const Text(
              "I am currently studying at the University of the Southern Philippines as a 3rd Year student."
              " I am a bit of a slow learner when it comes to programming but "
              "I am able to work well both in a team environment as well as using own initiative."
          ),
          const SizedBox(
              height: 18
          ),
          const Text('Personal Information',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),
          ),
          const ListTile(
            title: Text("21"),
            subtitle: Text('Age'),
          ),
          const ListTile(
            title: Text("September 10, 2001"),
            subtitle: Text('Birthday'),
          ),
          const ListTile(
            title: Text("Female"),
            subtitle: Text('Sex'),
          ),
          const ListTile(
            title: Text("Bisexual"),
            subtitle: Text('Gender'),
          ),
          const ListTile(
            title: Text("Student"),
            subtitle: Text('Occupation'),
          ),
          const ListTile(
            title: Text("University of the Southern Philippines"),
            subtitle: Text('University'),
          ),
          const ListTile(
            title: Text("09166195157"),
            subtitle: Text('Contact No.'),
          ),
          const ListTile(
            title: Text("Single"),
            subtitle: Text('Civil Status'),
          ),
          const ListTile(
            title: Text("Atheist"),
            subtitle: Text('Religion'),
          ),
          const ListTile(
            title: Text("Playing video games, Reading Books, Watching Movies"),
            subtitle: Text('Hobbies'),
          ),
        ],
      ),
    );
  }
}
