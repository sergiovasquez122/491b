import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // new
import 'package:getoutapp/ui/createEvent/create_event_view.dart';

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
    Text('Saved Events Page',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
    Text('Profile Page',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35))
  ];
  // whenever a user clicks on any tab, this func will be called
  void _onItemTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 243, 242),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _navBarTabs[_selectedTabIndex],
              const SizedBox(height: 30),

              // Sign Out Button
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          tooltip: 'Create Event',
          onPressed: () {
            Navigator.pushNamed(context, '/createEvent');
          },
          child: const Icon(Icons.create_outlined)),
      //bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.teal[200],
          currentIndex: _selectedTabIndex,
          onTap: _onItemTapped,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.search_sharp), label: 'Explore'), //search
            const BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.account_box_outlined), label: 'Profile')
          ]),
    );
  }
}
