import 'dart:html';

//import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class Events {
  final String aEvents;

  Events(this.aEvents);
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  // final _suggestions = <Events>[];
  // final _saved = <Events>{};
  final _biggerFont = const TextStyle(fontSize: 18);
  // final _events = [
  //   'Hiking',
  //   'Basketball',
  //   'Baseball',
  //   'Soccer',
  //   'Football',
  //   'Biking',
  //   'Scooter',
  // ];

  final List<String> eventNames = <String>[
    'Hiking',
    'Basketball',
    'Baseball',
    'Soccer',
    'Football',
    'Biking',
    'Scooter',
    'Hiking',
    'Basketball',
    'Baseball',
    'Soccer',
    'Football',
    'Biking',
    'Scooter'
  ];

  final List<String> savedEvents = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Event Generator'),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: _pushSaved,
            tooltip: 'Favorite Events',
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: eventNames.length,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return const Divider();

          final index = i;
          // if (index >= eventNames.length) {
          //   _suggestions.addAll(generateWordPairs().take(10));
          // }

          final alreadySaved = savedEvents.contains(eventNames[index]);

          return ListTile(
            title: Text(
              eventNames[index],
              style: _biggerFont,
            ),
            trailing: Icon(
              alreadySaved ? Icons.favorite : Icons.favorite_border,
              color: alreadySaved ? Colors.red : null,
              semanticLabel:
                  alreadySaved ? 'Remove from favorites' : 'Favorite',
            ),
            onTap: () {
              setState(() {
                if (alreadySaved) {
                  savedEvents.remove(eventNames[index]);
                } else {
                  savedEvents.add(eventNames[index]);
                }
              });
            },
          );
        },
      ),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) {
          final tiles = savedEvents.map(
            (pair) {
              return ListTile(
                title: Text(
                  pair.toString(),
                  style: _biggerFont,
                ),
              );
            },
          );
          final divided = tiles.isNotEmpty
              ? ListTile.divideTiles(
                  context: context,
                  tiles: tiles,
                ).toList()
              : <Widget>[];

          return Scaffold(
            appBar: AppBar(
              title: const Text('Favorite Events'),
            ),
            body: ListView(children: divided),
          );
        },
      ),
    );
  }
}
