import 'package:flutter/material.dart';

//carousel import
import 'package:carousel_slider/carousel_slider.dart';

class Sammo extends StatefulWidget {
  final bool isactive;

  const Sammo({Key key, this.isactive}) : super(key: key);
  @override
  _SammoState createState() => new _SammoState();
}

class _SammoState extends State<Sammo> {
  // ignore: unused_field
  int _current = 0;


  CarouselSlider carouselSlider;
// Images Url
  List imgList = [
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/Samooha/main.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/Samooha/locationMap.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/Samooha/route1.jpg',
    'https://s3.ap-south-1.amazonaws.com/capstonereality.com/assets/db_images/Samooha/route2.jpg',
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
    //print(widget.isactive);
    return Scaffold(
      appBar: AppBar(
        title:
          widget.isactive == true ? Text("Samooha") : Text("Samooha Completed"),
      ),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              widget.isactive == true
                  ? SizedBox()
                  : Text(
                      "Completed",
                      style: TextStyle(fontSize: 35, color: Colors.black45),
                    ),
              carouselSlider = CarouselSlider(
                height: widget.isactive == true ? 400 : 200,
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
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                            child: Image.network(imgUrl, fit: BoxFit.fill));
                      },
                    );
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
