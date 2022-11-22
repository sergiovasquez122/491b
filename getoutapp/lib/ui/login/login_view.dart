// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // new

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginView();
}

class _LoginView extends State<LoginView> {
  final email = TextEditingController();
  final password = TextEditingController();

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text.trim(), password: password.text.trim());
      await Future.delayed(const Duration(seconds: 1));
      if (mounted) {
        Navigator.pushNamed(context, '/home');
      }
    } on Exception catch (e) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(e.toString()),
          );
        },
      );
    }
  }

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
                Text('Welcome to Get Out!',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
                // ignore: prefer_const_constructors
                SizedBox(height: 10), // for space inbetween
                Text('Please login to find events near you!',
                    style: TextStyle(fontSize: 15)),
                SizedBox(height: 30),
                // email text feild
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.teal[50],
                        border: Border.all(color: Colors.white)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: TextField(
                          controller: email,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Email')),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // password text feild
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.teal[50],
                        border: Border.all(color: Colors.white)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: TextField(
                          controller: password,
                          obscureText: true, // hides password when inputting
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Password')),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                // Test Buttonn for sign in
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        signIn();
                      },
                      child: const Text('Sign in'),
                    )),

                // sign in button
                // Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 25.0),
                //     child: Container(
                //       padding: EdgeInsets.all(15),
                //       decoration: BoxDecoration(
                //           color: Colors
                //               .grey), // if we want we can curve the borders within the decoration
                //       child: Center(
                //           child: Text('Sign In',
                //               style: TextStyle(
                //                   fontWeight: FontWeight.bold, fontSize: 20))),
                //     )),
                SizedBox(height: 20),
                // create an account button
                // Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 25.0),
                //     child: Container(
                //       padding: EdgeInsets.all(15),
                //       decoration: BoxDecoration(
                //           color: Colors
                //               .grey), // if we want we can curve the borders within the decoration
                //       child: Center(
                //           child: Text('Create An Account',
                //               style: TextStyle(
                //                   fontWeight: FontWeight.bold, fontSize: 20))),
                //     )),

                // Test Buttonn
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/second');
                      },
                      child: const Text('New user? Create an account now'),
                    )),

                // First time? Register Now
                //Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                //children: [
                //Text('First time here?'),
                //Text(' Create account now',
                //style: TextStyle(
                //color: Colors.white,
                //fontWeight: FontWeight.bold,
                //))
                //],
                //),
              ],
            ),
          ),
        ));
  }
}
