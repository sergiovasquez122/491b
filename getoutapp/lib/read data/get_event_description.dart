import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//gets and returns a string including an event's name
class GetEventDescription extends StatelessWidget {
  final String eventID;

  GetEventDescription({required this.eventID});

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
            return Text('${data['description']}');
          }
          return Text('loading...');
        }));
  }
}
