import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ShadNagar extends StatefulWidget {
  @override
  _ShadNagarState createState() => _ShadNagarState();
}

class _ShadNagarState extends State<ShadNagar> {
  // ignore: unused_field
  int _current = 0;
  CarouselSlider carouselSlider;
  List imglist = [
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/1.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/2.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/3.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/4.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/5.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/6.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/7.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/8.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/9.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/10.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/11.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/12.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/13.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/14.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/15.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/16.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/17.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/18.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/19.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/20.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/21.jfif',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/22.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/23.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/24.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/25.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/26.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/27.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/28.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/29.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/30.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/31.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/32.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/33.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/34.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/35.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/36.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/37.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/38.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/39.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/40.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/41.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/shaadnagarbheemaram/42.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shad Nagar"),
      ),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              carouselSlider = CarouselSlider(
                height: 400,
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
