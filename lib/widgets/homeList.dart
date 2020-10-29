//import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final bool active;
  final String imgUrl;
  final String name;
  final String price;
  final Widget vill;
  final bool t;
  Cards({
    Key key,
    this.active,
    this.imgUrl,
    this.name,
    this.price,
    this.vill,
    this.t,
  });
  @override
  Widget build(BuildContext context) {
    print(imgUrl);
    return Card(
      //padding: EdgeInsets.all(5),
      elevation: 10,
      child: Column(
        // height: 100,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            // height: 172,
            child: active == true
                ? Text(
                    '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\n',
                    style: TextStyle(
                      backgroundColor: Colors.white10,
                      fontSize: 80,
                    ),
                  )
                : Text(
                    'Completed',
                    style: Theme.of(context).textTheme.headline1,
                  ),
            decoration: active == true
                ? BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: DecorationImage(
                      image: t == true
                          ? AssetImage('assets/images/3.jpg')
                          : NetworkImage(imgUrl),
                      fit: BoxFit.cover,
                    ),
                  )
                : BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      image: NetworkImage(imgUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
          ),
          ListTile(
            title:
                active == true ? Text(name) : Text(name + '\t' + "Completed"),
            subtitle: active == true ? Text(price) : Text('Completed'),
          ),
          ButtonBar(
            children: <Widget>[
              RaisedButton(
                child: Text('View More'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => vill,
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
