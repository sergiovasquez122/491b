import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:getoutapp/ui/createaccount/create_account_view.dart';
import 'package:getoutapp/ui/homepage/homepage_view.dart';
import 'package:getoutapp/ui/login/login_view.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePageView();
          } else {
            return LoginView();
          }
        },
      ),
    );
  }
}
