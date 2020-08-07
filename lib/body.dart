import 'package:capstoneApp/SSarms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//pages import
import './Chevella.dart';
import './Kandi.dart';
import './SSarms.dart';
import './aaraku.dart';
import './shadnagar.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 1650,
            padding: EdgeInsets.all(13),
            child: Container(
                child: Column(
              children: <Widget>[
                Card(
                  //padding: EdgeInsets.all(5),
                  elevation: 10,
                  child: Column(
                    // height: 100,
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
                        subtitle: Text("Price:Rs.8000 per sqyard"),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(
                            child: Text('View More'),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Chevella(),
                                ),
                              );
                            },
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
                              'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/ssfarms/IMG-20200701-WA0004.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const ListTile(
                        title: Text("SS Farms"),
                        subtitle: Text(
                            "Rs.1,50,000/- for 121sqyards (i.e One Gunta)"),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(
                            child: Text('View More'),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SSFarms(),
                                ),
                              );
                            },
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
                              'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/13.jfif',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const ListTile(
                        title: Text("Shad Nagar"),
                        subtitle: Text("Price : Rs.4500 only per sqyard"),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(
                            child: Text('View More'),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ShadNagar(),
                                ),
                              );
                            },
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
                              'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/kandi/IMG-20200605-WA0007.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const ListTile(
                        title: Text("Kandi"),
                        subtitle: Text("Price : Rs.8500 only per sqyard"),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(
                            child: Text('View More'),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Kandi(),
                                ),
                              );
                            },
                          )
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
                              'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/10.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const ListTile(
                        title: Text("Aaraku"),
                        subtitle: Text("Price : Rs.5000 only per sqyard"),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(
                            child: Text('View More'),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Aaraku(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
