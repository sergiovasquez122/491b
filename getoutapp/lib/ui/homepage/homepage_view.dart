import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // new

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageView();
}

class _HomePageView extends State<HomePageView> {
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
                SizedBox(height: 10), // for space inbetween
                Text('Find events near you!', style: TextStyle(fontSize: 15)),
                SizedBox(height: 30),

                // Test Buttonn
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Sign out'),
                    )),
              ],
            ),
          ),
        ));
  }
}
