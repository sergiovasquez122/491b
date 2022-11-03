// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // new

class DeletetAccountView extends StatefulWidget {
  const DeletetAccountView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DeletetAccountView();
}

class _DeletetAccountView extends State<DeletetAccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[200],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                // sign in button
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 248, 3,
                              3)), // if we want we can curve the borders within the decoration
                      child: Center(
                          child: Text('Delete  Account',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20))),
                    )),
                SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
