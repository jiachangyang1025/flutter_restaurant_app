import 'package:flutter/material.dart';
import 'package:resturant_app_flutter/utils.dart/nameText.dart';

class NewsCard3 extends StatefulWidget {
  @override
  _NewsCard3State createState() => _NewsCard3State();
}

class _NewsCard3State extends State<NewsCard3> {
  @override
  Widget build(BuildContext context) {
    return new Card(
          color: Colors.orange[200],
          elevation: 10.0,
          margin: const EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[
              new Image.asset(
                'images/ppl3.jpg',
                width: 400.0,
                height: 250.0,
                fit: BoxFit.cover,
              ),
              new ListTile(
                title: new Text(
                  newsCardTitle3,
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: new Text(newsCardSubTitle3),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 15.0),
              ),
            ],
          ),
        );
  }
}