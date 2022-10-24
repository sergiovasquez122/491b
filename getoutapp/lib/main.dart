import 'package:flutter/material.dart';
import 'package:getoutapp/ui/login/login_view.dart';
import 'package:getoutapp/ui/createaccount/create_account_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const LoginView(),
        '/second': (context) => const CreateAccountView(),
      },
      //home: const LoginView(), //CreateAccountView(),
    );
  }
}
