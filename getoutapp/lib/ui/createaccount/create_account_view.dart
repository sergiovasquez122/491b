import 'package:flutter/material.dart';
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
                // email text field
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
                              border: InputBorder.none, hintText: 'Email')),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // password text field
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
                SizedBox(height: 10),
                // sign in button
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

                // Not necessary for Create Account Page
                // First time? Register Now
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text('First time here?'),
                //     Text(' Create account now',
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontWeight: FontWeight.bold,
                //         ))
                //   ],
                // )
              ],
            ),
          ),
        ));
  }
}