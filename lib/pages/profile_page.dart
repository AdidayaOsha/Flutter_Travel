import 'package:fitness/core/constant.dart';
import 'package:fitness/core/notifiers.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/yeah.png'),
            radius: 60,
          ),
          SizedBox(
            height: kDouble20,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Flutter Mapp'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Info@fluttermapp.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('FlutterMapp.com'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: const Icon(Icons.dark_mode),
      ),
    );
  }
}
