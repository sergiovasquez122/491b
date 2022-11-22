import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:getoutapp/ui/createEvent/create_event_view.dart';
import 'package:getoutapp/ui/deleteaccount/delete_account_view.dart';
import 'package:getoutapp/ui/login/login_view.dart';
import 'package:getoutapp/ui/createaccount/create_account_view.dart';
import 'package:getoutapp/ui/homepage/homepage_view.dart';
import 'package:getoutapp/ui/resetaccount/reset_account_view.dart';
import 'package:getoutapp/ui/settingspage/settings_page_view.dart';

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
        primarySwatch: Colors.grey,
      ),
      routes: {
        '/': (context) => const LoginView(), // CreateEventView(),
        '/second': (context) => const CreateAccountView(),
        '/home': (context) => const HomePageView(),
        '/reset': (context) => const ResetAccountView(),
        '/deleteacct': (context) => const DeletetAccountView(),
        '/usersettings': (context) => const UserSettingsView(),
      },
      debugShowCheckedModeBanner: false,
      //home: const LoginView(), //CreateAccountView(),
    );
  }
}
