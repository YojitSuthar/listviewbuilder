import 'package:flutter/material.dart';
import 'build.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Builder1(),);
  }
}


void main() {
  runApp(MyApp());
}