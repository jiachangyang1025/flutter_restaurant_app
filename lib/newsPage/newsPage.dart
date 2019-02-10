
import 'package:flutter/material.dart';
import 'package:resturant_app_flutter/newsPage/itemSwiperWidget.dart';
import 'package:resturant_app_flutter/newsPage/newsCardWidget1.dart';
import 'package:resturant_app_flutter/newsPage/newsCardWidget2.dart';
import 'package:resturant_app_flutter/newsPage/newsCardWidget3.dart';


class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new ListView(
      children: <Widget>[
        new Container(
          color: Colors.grey[200],
          height: 290.0,
          child: ItemSwiper(),
        ),
        
        NewsCard1(),
        NewsCard2(),
        NewsCard3(), 
      ],
    )
    );
  }
}