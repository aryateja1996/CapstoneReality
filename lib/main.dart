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
        drawer: Drawer(
          child: Scaffold(
            body: ListView(
              children: [
                DrawerHeader(
                  child: Image(
                    image: AssetImage('assets/icon/icon.png'),
                  ),
                ),
                ListTile(
                  title: Text('Privacy Policy'),
                  onTap: () {
                    launchUrl(
                      'https://firebasestorage.googleapis.com/v0/b/capstone-reality-website.appspot.com/o/Privacy%20Policy.docx?alt=media&token=eb560e1a-6cbe-4c26-b3e4-234b06383547',
                    );
                  },
                )
              ],
            ),
          ),
        ),
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

Future<void> launchUrl(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
