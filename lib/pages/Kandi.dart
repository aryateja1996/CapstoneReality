import 'package:flutter/material.dart';
//carousel import
import 'package:carousel_slider/carousel_slider.dart';

class Kandi extends StatefulWidget {
  final bool active;

  Kandi({Key key, this.active});
  @override
  _KandiState createState() => _KandiState();
}

class _KandiState extends State<Kandi> {
  // ignore: unused_field
  int _current = 0;
  Kandi ch = new Kandi();
  CarouselSlider carouselSlider;
  List imglist = [
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/kandi/IMG-20200605-WA0002.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/kandi/IMG-20200605-WA0003.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/kandi/IMG-20200605-WA0004.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/kandi/IMG-20200605-WA0005.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/kandi/IMG-20200605-WA0006.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/kandi/IMG-20200605-WA0007.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/kandi/IMG-20200605-WA0008.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/kandi/IMG-20200605-WA0009.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/kandi/IMG-20200605-WA0010.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/kandi/IMG-20200605-WA0010.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/kandi/IMG-20200605-WA0012.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/kandi/IMG-20200605-WA0013.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ch.active == true ? Text("Kandi") : Text("Kandi Completed"),
      ),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ch.active == true
                  ? null
                  : Text(
                      "Completed",
                      style: TextStyle(fontSize: 35, color: Colors.black45),
                    ),
              carouselSlider = CarouselSlider(
                height: ch.active == true ? 400 : 200,
                enlargeCenterPage: true,
                autoPlay: false,
                autoPlayInterval: Duration(
                  seconds: 2,
                ),
                autoPlayAnimationDuration: Duration(
                  milliseconds: 2000,
                ),
                pauseAutoPlayOnTouch: Duration(
                  seconds: 5,
                ),
                scrollDirection: Axis.horizontal,
                enableInfiniteScroll: false,
                initialPage: 0,
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
                items: imglist.map((imgUrl) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                        child: Image.network(imgUrl, fit: BoxFit.fill));
                  });
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  OutlineButton(
                    onPressed: goToPrevious,
                    child: Text("<"),
                  ),
                  OutlineButton(
                    onPressed: goToNext,
                    child: Text(">"),
                  ),
                ],
              ),
            ]),
      ),
    );
  }

  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() => carouselSlider.nextPage(
      duration: Duration(milliseconds: 300), curve: Curves.ease);
}
