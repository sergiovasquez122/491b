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
// ORIGINAL CODE

// class LoginView extends StatefulWidget {
//   const LoginView({Key? key}) : super(key: key);

//   @override
//   State<StatefulWidget> createState() => _LoginView();
// }

// class _LoginView extends State<LoginView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.teal[200],
//         body: SafeArea(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // title of our app
//                 Text('Welcome to Get Out!',
//                     style:
//                         TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
//                 SizedBox(height: 10), // for space inbetween
//                 Text('Please login to find events near you!',
//                     style: TextStyle(fontSize: 15)),
//                 SizedBox(height: 30),
//                 // email text feild
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.teal[50],
//                         border: Border.all(color: Colors.white)),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 30.0),
//                       child: TextField(
//                           decoration: InputDecoration(
//                               border: InputBorder.none, hintText: 'Email')),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 // password text feild
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.teal[50],
//                         border: Border.all(color: Colors.white)),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 30.0),
//                       child: TextField(
//                           obscureText: true, // hides password when inputting
//                           decoration: InputDecoration(
//                               border: InputBorder.none, hintText: 'Password')),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 // sign in button
//                 Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                     child: Container(
//                       padding: EdgeInsets.all(15),
//                       decoration: BoxDecoration(
//                           color: Colors
//                               .grey), // if we want we can curve the borders within the decoration
//                       child: Center(
//                           child: Text('Sign In',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 20))),
//                     )),
//                 SizedBox(height: 20),
//                 // create an account button
//                 Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                     child: Container(
//                       padding: EdgeInsets.all(15),
//                       decoration: BoxDecoration(
//                           color: Colors
//                               .grey), // if we want we can curve the borders within the decoration
//                       child: Center(
//                           child: Text('Create An Account',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 20))),
//                     )),

//                 // First time? Register Now
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text('First time here?'),
//                     Text(' Create account now',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ))
//                   ],
//                 ),
//                 // Test Buttonn
//                 Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, '/second');
//                       },
//                       child: const Text('Create an Account'),
//                     )),
//               ],
//             ),
//           ),
//         ));
//   }
// }

// class CreateAccountView extends StatefulWidget {
//   const CreateAccountView({Key? key}) : super(key: key);

//   @override
//   State<StatefulWidget> createState() => _CreateAccountView();
// }

// class _CreateAccountView extends State<CreateAccountView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.teal[200],
//         body: SafeArea(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // title of our app
//                 Text('Get Started with Get Out!',
//                     style:
//                         TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
//                 SizedBox(height: 10), // for space inbetween
//                 Text('Create an account to begin browsing events near you!',
//                     style: TextStyle(fontSize: 15)),
//                 SizedBox(height: 30),
//                 // email text field
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.teal[50],
//                         border: Border.all(color: Colors.white)),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 30.0),
//                       child: TextField(
//                           decoration: InputDecoration(
//                               border: InputBorder.none, hintText: 'Email')),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 // password text field
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.teal[50],
//                         border: Border.all(color: Colors.white)),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 30.0),
//                       child: TextField(
//                           obscureText:
//                               false, // does not hide password when inputting
//                           decoration: InputDecoration(
//                               border: InputBorder.none, hintText: 'Password')),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 // sign in button
//                 Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                     child: Container(
//                       padding: EdgeInsets.all(15),
//                       decoration: BoxDecoration(
//                           color: Colors
//                               .grey), // if we want we can curve the borders within the decoration
//                       child: Center(
//                           child: Text('Create Account',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 20))),
//                     )),
//                 SizedBox(height: 20),

//                 // Not necessary for Create Account Page
//                 // First time? Register Now
//                 // Row(
//                 //   mainAxisAlignment: MainAxisAlignment.center,
//                 //   children: [
//                 //     Text('First time here?'),
//                 //     Text(' Create account now',
//                 //         style: TextStyle(
//                 //           color: Colors.white,
//                 //           fontWeight: FontWeight.bold,
//                 //         ))
//                 //   ],
//                 // )

//                 // Test Buttonn
//                 Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       child: const Text('Go Back!'),
//                     )),
//               ],
//             ),
//           ),
//         ));
//   }
// }
// class SecondRoute extends StatelessWidget {
//   const SecondRoute({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Navigate back to first route when tapped.
//           },
//           child: const Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }
