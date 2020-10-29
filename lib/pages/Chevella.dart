
import 'package:flutter/material.dart';

//carousel import
import 'package:carousel_slider/carousel_slider.dart';

class Chevella extends StatefulWidget {
  final bool active;

  Chevella({Key key, this.active});
  @override
  _ChevellaState createState() => _ChevellaState();
}

class _ChevellaState extends State<Chevella> {
  // ignore: unused_field
  int _current = 0;
  Chevella ch = new Chevella();
  CarouselSlider carouselSlider;
// Images Url
  List imgList = [
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/1.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/2.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/3.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/4.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/5.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/6.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/7.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/8.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/9.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/10.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/11.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/12.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/13.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/14.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/15.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/16.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/17.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/18.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/19.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/20.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/21.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/22.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/23.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/24.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/25.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/26.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/27.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/28.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/29.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/30.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/31.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/32.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/33.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/34.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/35.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/36.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/37.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/38.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/39.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/40.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/41.jpeg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/chevellaresort/42.jpeg',
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            ch.active == true ? Text("Chevella") : Text("Chevella Completed"),
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
                items: imgList.map(
                  (imgUrl) {
                    return Builder(builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.green,
                          ),
                          child: Image.network(imgUrl, fit: BoxFit.fill));
                    });
                  },
                ).toList(),
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
