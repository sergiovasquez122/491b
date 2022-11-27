import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:getoutapp/firebase_options.dart';
import 'package:getoutapp/main_pages.dart';
import 'package:getoutapp/ui/createEvent/create_event_view.dart';
import 'package:getoutapp/ui/deleteaccount/delete_account_view.dart';
import 'package:getoutapp/ui/login/login_view.dart';
import 'package:getoutapp/ui/createaccount/create_account_view.dart';
import 'package:getoutapp/ui/homepage/homepage_view.dart';
import 'package:getoutapp/ui/resetaccount/reset_account_view.dart';
import 'package:getoutapp/ui/settingspage/settings_page_view.dart';
import 'package:getoutapp/ui/eventgenerator/favorite_event_view.dart';
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
        '/second': (context) => const CreateAccountView(),
        '/home': (context) => const HomePageView(),
        '/reset': (context) => const ResetAccountView(),
        '/deleteacct': (context) => const DeletetAccountView(),
        '/usersettings': (context) => const UserSettingsView(),
        '/loginview': (context) => const LoginView(),
        '/favoriteevents': (context) => const RandomWords(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

// class RandomWords extends StatefulWidget {
//   const RandomWords({super.key});

//   @override
//   State<RandomWords> createState() => _RandomWordsState();
// }

// class _RandomWordsState extends State<RandomWords> {
//   final _suggestions = <WordPair>[];
//   final _saved = <WordPair>{};
//   final _biggerFont = const TextStyle(fontSize: 18);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Events Page'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.list),
//             onPressed: _pushSaved,
//             tooltip: 'Favorite Events',
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16.0),
//         itemBuilder: (context, i) {
//           if (i.isOdd) return const Divider();

//           final index = i ~/ 2;
//           if (index >= _suggestions.length) {
//             _suggestions.addAll(generateWordPairs().take(10));
//           }

//           final alreadySaved = _saved.contains(_suggestions[index]);

//           return ListTile(
//             title: Text(
//               _suggestions[index].asPascalCase,
//               style: _biggerFont,
//             ),
//             trailing: Icon(
//               alreadySaved ? Icons.favorite : Icons.favorite_border,
//               color: alreadySaved ? Colors.red : null,
//               semanticLabel:
//                   alreadySaved ? 'Remove from favorites' : 'Favorite',
//             ),
//             onTap: () {
//               setState(() {
//                 if (alreadySaved) {
//                   _saved.remove(_suggestions[index]);
//                 } else {
//                   _saved.add(_suggestions[index]);
//                 }
//               });
//             },
//           );
//         },
//       ),
//     );
//   }

//   void _pushSaved() {
//     Navigator.of(context).push(
//       MaterialPageRoute<void>(
//         builder: (context) {
//           final tiles = _saved.map(
//             (pair) {
//               return ListTile(
//                 title: Text(
//                   pair.asPascalCase,
//                   style: _biggerFont,
//                 ),
//               );
//             },
//           );
//           final divided = tiles.isNotEmpty
//               ? ListTile.divideTiles(
//                   context: context,
//                   tiles: tiles,
//                 ).toList()
//               : <Widget>[];

//           return Scaffold(
//             appBar: AppBar(
//               title: const Text('Favorite Events'),
//             ),
//             body: ListView(children: divided),
//           );
//         },
//       ),
//     );
//   }
// }
