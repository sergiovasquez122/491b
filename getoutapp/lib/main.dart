import 'package:flutter/material.dart';
import 'package:getoutapp/firebase_options.dart';
import 'package:getoutapp/main_pages.dart';
import 'package:getoutapp/ui/deleteaccount/delete_account_view.dart';
import 'package:getoutapp/ui/login/login_view.dart';
import 'package:getoutapp/ui/createaccount/create_account_view.dart';
import 'package:getoutapp/ui/homepage/homepage_view.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      routes: {
        '/second': (context) => const CreateAccountView(),
        '/home': (context) => const HomePageView(),
      },
      home: Main(), //CreateAccountView(),
    );
  }
}
