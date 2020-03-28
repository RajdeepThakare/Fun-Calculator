
import 'package:flutter/material.dart';
import 'package:fun_calculator/pages/home.dart';
import 'package:fun_calculator/pages/love.dart';
import 'package:fun_calculator/pages/age.dart';


void main() {
  runApp(
    MaterialApp(
      routes: {
        '/': (context) => Home(),
        '/love': (context) => Love(),
        '/age': (context) => Age(),
      },
    ),
  );
}
