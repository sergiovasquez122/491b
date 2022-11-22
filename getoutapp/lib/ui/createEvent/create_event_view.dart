import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';


import 'package:flutter/material.dart';




class CreateEventView extends StatefulWidget {
  CreateEventView({Key? key}) : super(key: key);

  @override
  State<CreateEventView> createState() => _CreateEventViewState();
}

class _CreateEventViewState extends State<CreateEventView> {


  GlobalKey<FormState> formKey = GlobalKey<FormState>();


   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create an Event'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              // event name
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    //icon: Icon(Icons.app_registration),
                    labelText: 'Event Name',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: 
                        BorderSide(color: Colors.grey, width: 0.0)
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    //icon: Icon(Icons.app_registration),
                    labelText: 'Event Date',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: 
                        BorderSide(color: Colors.grey, width: 0.0)
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    //icon: Icon(Icons.app_registration),
                    labelText: 'Event Time',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: 
                        BorderSide(color: Colors.grey, width: 0.0)
                    )
                  ),
                ),
              ),
              
              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  maxLines: 7,
                  decoration: const InputDecoration(
                    //icon: Icon(Icons.app_registration),
                    labelText: 'Description',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: 
                        BorderSide(color: Colors.grey, width: 0.0)
                    )
                  ),
                ),
              ), 


            ],
            ) 
          ),
        )


    );
}
}