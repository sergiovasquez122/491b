// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ResetAccountView extends StatefulWidget {
  const ResetAccountView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ResetAccountView();
}

class _ResetAccountView extends State<ResetAccountView> {
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
                Text('Settings Page', style: TextStyle(fontSize: 15)),

                SizedBox(height: 30),

                // current password text field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.teal[50],
                        border: Border.all(color: Colors.white)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Current Password')),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                // new password text field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.teal[50],
                        border: Border.all(color: Colors.white)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: TextField(
                          obscureText:
                              false, // does not hide password when inputting
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter new Password')),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                // confirm new password text field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.teal[50],
                        border: Border.all(color: Colors.white)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: TextField(
                          obscureText:
                              false, // does not hide password when inputting
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter new Password again')),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // confirm new password button
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors
                              .grey), // if we want we can curve the borders within the decoration
                      child: Center(
                          child: Text('Confirm',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20))),
                    )),
                SizedBox(height: 20),

                // Go Back Button
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context, '/home');
                      },
                      child: const Text('Go back to Homepage'),
                    )),
                // Test Button
              ],
            ),
          ),
        ));
  }
}
