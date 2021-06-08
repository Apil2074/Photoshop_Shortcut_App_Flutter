import 'package:flutter/material.dart';
import './screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adobe Photoshop Shortcut',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
