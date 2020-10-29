import 'package:flutter/material.dart';
import 'exports.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Cards(
            active: true,
            imgUrl:
                'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/Samooha/route1.jpg',
            name: 'Pharma Valley',
            price: 'Rs.3625/- per sqyards',
            vill: Sammo(
              isactive: true,
            ),
          ),
          Cards(
            active: true,
            imgUrl:
                'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/NeemsBoro/2.jpeg',
            name: 'Pamena Greens',
            price: 'Rs.5,000/- per sqyards',
            t: true,
            vill: Pamena(
              isactive: true,
            ),
          ),
          Cards(
            //active: true,
            imgUrl:
                'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/1.jpeg',
            name: 'Chevella',
            price: 'Rs.1,50,000/- for 121sqyards (i.e One Gunta)"',
            vill: Chevella(
              active: false,
            ),
          ),
          Cards(
            active: false,
            imgUrl:
                'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/ssfarms/IMG-20200701-WA0004.jpg',
            name: 'SS Farms',
            price: 'Rs.1,50,000/- for 121sqyards (i.e One Gunta)',
            vill: SSFarms(active: false),
          ),
          Cards(
            //active: true,
            imgUrl:
                'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/kandi/IMG-20200605-WA0007.jpg',
            name: 'Kandi',
            price: 'Rs.1,50,000/- for 121sqyards (i.e One Gunta)"',
            vill: Kandi(
              active: false,
            ),
          ),
          Cards(
            //active: true,
            imgUrl:
                'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/13.jfif',
            name: 'Shadh Nagar',
            price: 'Rs.1,50,000/- for 121sqyards (i.e One Gunta)"',
            vill: ShadNagar(
              active: false,
            ),
          ),
          Cards(
            //active: true,
            imgUrl:
                'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/10.jpg',
            name: 'AArakur',
            price: 'Rs.1,50,000/- for 121sqyards (i.e One Gunta)"',
            vill: Aaraku(
              active: false,
            ),
          ),
        ],
      ),
    );
  }
}
