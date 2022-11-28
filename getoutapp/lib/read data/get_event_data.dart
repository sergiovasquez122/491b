import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'get_event_name.dart';

//gets and returns a string including an event's name, time, and description
class GetEventData extends StatelessWidget {
  final String eventID;

  GetEventData({required this.eventID});

  @override
  Widget build(BuildContext context) {
    //get the collection
    CollectionReference events =
        FirebaseFirestore.instance.collection('events');

    return FutureBuilder<DocumentSnapshot>(
        future: events.doc(eventID).get(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            // print(GetEventName(
            //   eventID: eventID,
            // ));
            return Text('${data['name']}' +
                ': ' +
                '${data['time'].toDate()}' +
                '\n${data['description']}');
          }
          return Text('loading...');
        }));
  }
}
