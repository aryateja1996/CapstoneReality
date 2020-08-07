import 'package:flutter/material.dart';

// Custom Classes Import
import './body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 15,
          title: Text("Capstone Reality"),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.call,
                color: Colors.white,
              ),
              onPressed: null,
            ),
          ],
        ),
        body: Main(),
      ),
    );
  }
}
