import 'package:flutter/material.dart';
import 'dart:async';
//import 'dart:io';
//import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:getoutapp/read%20data/get_event_data.dart';

//import if getting event data individually
//import 'package:getoutapp/read%20data/get_event_description.dart';
//import 'package:getoutapp/read%20data/get_event_time.dart';
//import 'package:getoutapp/read%20data/get_event_name.dart';

class ViewEvent extends StatefulWidget {
  const ViewEvent({Key? key}) : super(key: key);

  @override
  State<ViewEvent> createState() => _ViewEventState();
}

//
class _ViewEventState extends State<ViewEvent> {
  GlobalKey<FormState> formKey =
      GlobalKey<FormState>(); // key is used for validation
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // gets and displays all events (name, time, & description) in a list view
          Expanded(
              child: FutureBuilder(
            future: getEventID(),
            builder: (context, snapshot) {
              return ListView.builder(
                  itemCount: eventIDs.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        tileColor: Colors.teal[50],
                        title: GetEventData(eventID: eventIDs[index]),
                        // subtitle: GetEventDescription(eventID: eventIDs[index]),
                      ),
                    );
                  }));
            },
          ))
          //-----
        ],
      ),
    ));
  }
}

//necessary code to get event IDs to use to get event data in form of list
//list of event IDs
List<String> eventIDs = [];

//getter for event IDs
Future getEventID() async {
  await FirebaseFirestore.instance
      .collection('events')
      .get()
      .then(((snapshot) => snapshot.docs.forEach((document) {
            if (!eventIDs.contains(document.reference.id)) {
              print(document.reference);
              eventIDs.add(document.reference.id);
            }
          })));
}
