// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserSettingsView extends StatefulWidget {
  const UserSettingsView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _UserSettingsView();
}

class _UserSettingsView extends State<UserSettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[200],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10), // for space inbetween
                Text('Settings Page', style: TextStyle(fontSize: 30)),

                SizedBox(height: 30),

                // Button to Access Delete Account
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/deleteacct');
                      },
                      child: const Text('Delete Account'),
                    )),
                SizedBox(height: 10),

                // Button to Access Reset Account
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/reset');
                      },
                      child: const Text('Reset Account'),
                    )),

                SizedBox(height: 10),

                //Go Back Button
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context, '/home');
                      },
                      child: const Text('Go back to Homepage'),
                    )),
              ],
            ),
          ),
        ));
  }
}
