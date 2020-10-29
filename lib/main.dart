
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import './body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
              onPressed: () {
                customLauncher('tel:+91 7661904609');
              },
            ),
          ],
        ),
        body: Main(),
      ),
    );
  }

  void customLauncher(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print("Can't launch");
    }
  }
}
