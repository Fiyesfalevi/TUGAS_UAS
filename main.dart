import 'package:flutter/material.dart';
import 'screens/home_screens.dart';

void main() {
  runApp(GrandArabiaApp());
}

class GrandArabiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grand Arabia Hotel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Arial',
      ),
      home: HomeScreens(),
      debugShowCheckedModeBanner: false,
    );
  }
}