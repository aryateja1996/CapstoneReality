import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1024,
      child: Container(
          child: Column(
        children: <Widget>[
          Card(
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 172,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/1.jpeg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const ListTile(
                  title: Text("Chevella"),
                ),
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('View More'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 172,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/1.jpeg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const ListTile(
                  title: Text("Chevella"),
                ),
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('View More'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 172,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/1.jpeg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const ListTile(
                  title: Text("Chevella"),
                ),
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('View More'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 172,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/1.jpeg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const ListTile(
                  title: Text("Chevella"),
                ),
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('View More'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
