// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:firebase_auth/firebase_auth.dart'; // new

class CreateAccountView extends StatefulWidget {
  const CreateAccountView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CreateAccountView();
}

class _CreateAccountView extends State<CreateAccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[200],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // title of our app
                Text('Get Started with Get Out!',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
                SizedBox(height: 10), // for space inbetween
                Text('Create an account to begin browsing events near you!',
                    style: TextStyle(fontSize: 15)),
                SizedBox(height: 30),
                // first name text field
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      'First Name:',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
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
                              hintText: 'First name')),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // last name text field
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      'Last Name:',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
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
                              false, // does not hide text when inputting
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Last Name')),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // email text field
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      'Email:',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
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
                              false, // does not hide text when inputting
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Email')),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // password text field
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      'Password:',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
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
                              border: InputBorder.none, hintText: 'Password')),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      'Password must contain at least: 8 characters, one uppercase letter, one number.',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),

                // new FlutterPwValidator(
                //     controller: controller,
                //     minLength: 8,
                //     uppercaseCharCount: 2,
                //     numericCharCount: 3,
                //     specialCharCount: 1,
                //     width: 400,
                //     height: 150,
                //     onSuccess: () {
                //       print("Matched");
                //       Scaffold.of(context).showSnackBar(new SnackBar(
                //           content: new Text("Password is matched")));
                //     }),

                // Create Account Finalizer Button
                SizedBox(height: 10),
                // create account button
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors
                              .grey), // if we want we can curve the borders within the decoration
                      child: Center(
                          child: Text('Create Account',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20))),
                    )),
                SizedBox(height: 20),

                // Go Back Button
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back!'),
                    )),
                // Go Back Button
              ],
            ),
          ),
        ));
  }
}
