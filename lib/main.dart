
import 'package:flutter/material.dart';
import 'package:fun_calculator/pages/home.dart';
import 'package:fun_calculator/pages/love.dart';
import 'package:fun_calculator/pages/age.dart';
import 'package:fun_calculator/pages/friendship.dart';
import 'package:fun_calculator/pages/hateness.dart';


void main() {
  runApp(
    MaterialApp(
      routes: {
        '/': (context) => Home(),
        '/love': (context) => Love(),
        '/age': (context) => Age(),
        '/friendship': (context) => Friendship(),
        '/hateness': (context) => Hateness(),
      },
    ),
  );
}
