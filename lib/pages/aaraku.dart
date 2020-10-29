import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Aaraku extends StatefulWidget {
  final bool active;

 Aaraku({Key key, this.active});
  @override
  _AarakuState createState() => _AarakuState();
}

class _AarakuState extends State<Aaraku> {
  // ignore: unused_field
  int _current = 0;
  Aaraku ch = new Aaraku();
  CarouselSlider carouselSlider;
  List imglist = [
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/1.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/2.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/3.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/4.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/5.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/6.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/7.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/8.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/9.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/10.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/11.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/12.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/13.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/14.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/15.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/16.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/17.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/araku/18.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ch.active == true ? Text("Aaraku") : Text("Aaraku Completed"),
      ),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              ch.active == true ? null : Text("Completed",style: TextStyle(fontSize: 35,color:Colors.black45 ),),


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
