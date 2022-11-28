import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CreateEventView extends StatefulWidget {
  const CreateEventView({Key? key}) : super(key: key);

  @override
  State<CreateEventView> createState() => _CreateEventViewState();
}

class _CreateEventViewState extends State<CreateEventView> {
  GlobalKey<FormState> formKey =
      GlobalKey<FormState>(); // key is used for validation

  Future createEvent() async {
    await FirebaseFirestore.instance.collection("events").add({
      "name": event.text.trim(),
      "description": description.text.trim(),
      "time": DateTime.parse(date.text.trim() + " " + time.text.trim())
    });
  }

  final event = TextEditingController();
  //GlobalKey<FormState> formKey = GlobalKey<FormState>(); // key is used for validation

  final description = TextEditingController();

  final date = TextEditingController();

  final time = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 230, 243, 242),
        appBar: AppBar(backgroundColor: Colors.teal[200]
            //title: Text('Create an Event'),
            ),
        body: SingleChildScrollView(
          child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Text('Create an Event',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35)),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 60.0, right: 45.0),
                    child: Text(
                        'Please fill out this form to create your event.',
                        style: TextStyle(fontSize: 15)),
                  ),
                  // event name
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: TextFormField(
                      controller: event,
                      decoration: const InputDecoration(
                          //icon: Icon(Icons.app_registration),
                          labelText: 'Event Name',
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.5))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          //icon: Icon(Icons.app_registration),
                          labelText: 'Location',
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.5))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: TextFormField(
                      controller: date,
                      decoration: const InputDecoration(
                          //icon: Icon(Icons.app_registration),
                          labelText: 'Event Date',
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.5))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: TextFormField(
                      controller: time,
                      decoration: const InputDecoration(
                          //icon: Icon(Icons.app_registration),
                          labelText: 'Event Time',
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.5))),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: TextFormField(
                      controller: description,
                      maxLines: 7,
                      decoration: const InputDecoration(
                          //icon: Icon(Icons.app_registration),
                          labelText: 'Description',
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.5))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 375.0),
                    child: IconButton(
                      icon: const Icon(Icons.upload_file_outlined),
                      onPressed: () {},
                      tooltip: 'Upload an image',
                    ),
                  ),

                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                        onPressed: createEvent,
                        child: const Text('Create'),
                      )),
                ],
              )),
        ));
  }
}
