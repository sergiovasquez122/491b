import 'package:flutter/material.dart';
import 'package:getoutapp/model/user.dart';

class UserPreferences {
  static const myUser = User(
    imagePath:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Default_pfp.svg/1200px-Default_pfp.svg.png',
    name: 'Full Name',
    email: 'example@email.com',
    location: 'City, State',
    about: 'Write something about yourself...',
  );
}