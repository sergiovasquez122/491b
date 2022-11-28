import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:getoutapp/main_pages.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:getoutapp/firebase_options.dart';
import 'package:getoutapp/main_pages.dart';
import 'package:getoutapp/ui/createEvent/create_event_view.dart';
import 'package:getoutapp/ui/createEvent/view_event.dart';
import 'package:getoutapp/ui/deleteaccount/delete_account_view.dart';
import 'package:getoutapp/ui/login/login_view.dart';
import 'package:getoutapp/ui/createaccount/create_account_view.dart';
import 'package:getoutapp/ui/homepage/homepage_view.dart';
import 'package:getoutapp/ui/resetaccount/reset_account_view.dart';
import 'package:getoutapp/ui/settingspage/settings_page_view.dart';
import 'package:getoutapp/ui/eventgenerator/favorite_event_view3.dart';
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
      initialRoute: '/loginview',
      routes: {
        '/': (context) => const MainView(),
        '/viewevent': (context) => ViewEvent(),
        '/second': (context) => const CreateAccountView(),
        '/home': (context) => const HomePageView(),
        '/reset': (context) => const ResetAccountView(),
        '/deleteacct': (context) => const DeletetAccountView(),
        '/usersettings': (context) => const UserSettingsView(),
        '/createEvent': (context) => CreateEventView(),
        '/loginview': (context) => const LoginView(),
        '/favoriteevents': (context) => const RandomWords(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
