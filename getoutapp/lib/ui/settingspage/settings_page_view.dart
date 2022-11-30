// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

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
                Text('Settings', style: TextStyle(fontSize: 30)),

                SizedBox(height: 30),

                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/loginview');
                      },
                      child: const Text('Sign out'),
                    )),
                SizedBox(height: 10),

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
                        if (Navigator.of(context).canPop()) {
                          Navigator.of(context).pop('/home');
                        } else {
                          // Android back button hack
                          SystemNavigator.pop();
                        }
                      },
                      child: const Text('Go back to Homepage'),
                    )),
              ],
            ),
          ),
        ));
  }
}
