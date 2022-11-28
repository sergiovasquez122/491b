// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:getoutapp/ui/eventgenerator/favorite_event_view3.dart';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // new

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageView();
}

class _HomePageView extends State<HomePageView> {
  // our initial selected tab is the explore tab
  int _selectedTabIndex = 0;

  // we will eventuallty change this to actual Page view widgets
  // this defines the content of our pages
  static const List _navBarTabs = [
    Text('Explore Page',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
    RandomWords(),
    Text('Profile Page',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35))
  ];
  // whenever a user clicks on any tab, this func will be called
  void _onItemTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
      if (index == 0)
        [
          Navigator.pushNamed(context, '/[insertname]'),
        ];
      if (index == 1)
        [
          Navigator.pushNamed(context, '/favoriteevents'),
        ];
      if (index == 1)
        [
          Navigator.pushNamed(context, '/[insertname]'),
        ];
      else
        [Navigator.pushNamed(context, '/home')];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 230, 243, 242),
      // app bar with settings icon
      appBar: AppBar(
          title: const Text('Get Out'),
          backgroundColor: Colors.teal[200],
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Settings',
              onPressed: () {
                Navigator.pushNamed(context, '/usersettings');
              },
            )
          ]),

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _navBarTabs[_selectedTabIndex],
                SizedBox(height: 30),

                // Button For Favorite Events
                // Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 25.0),
                //     child: ElevatedButton(
                //       onPressed: () {
                //         Navigator.pushNamed(context, '/favoriteevents');
                //       },
                //       child: const Text('Events Page'),
                //     )),
                // SizedBox(height: 20),

                // Sign Out Button
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: const Text('Sign out'),
                    )),
              ],
            ),
          ),
        ),
      ),
      //bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.teal[200],
          currentIndex: _selectedTabIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.search_sharp), label: 'Explore'), //search
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_outlined), label: 'Profile')
          ]),
    );
  }
}
