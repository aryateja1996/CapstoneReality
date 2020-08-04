import 'package:flutter/material.dart';

// Custom Classes Import
import './body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Capstone Reality"),
        ),
        body: Main(),
      ),
    );
  }
}
