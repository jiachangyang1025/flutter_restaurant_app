import 'package:flutter/material.dart';
import 'package:resturant_app_flutter/detailPage/detailPage.dart';
import 'package:resturant_app_flutter/model/tea_items.dart';
import 'package:resturant_app_flutter/utils.dart/nameText.dart';

class TeaGridViewMenu extends StatefulWidget {
  @override
  _TeaGridViewMenuState createState() => _TeaGridViewMenuState();
}

class _TeaGridViewMenuState extends State<TeaGridViewMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text(menuPageTeaTitle),
          backgroundColor: Colors.orange[400],
        ),
        body: new GridView.builder(
            itemCount: teaItems.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (
                    BuildContext context,
                  ) =>
                          new DetailPage(
                            name: teaItems[index].name,
                            imgUrl: teaItems[index].imgUrl,
                            price: teaItems[index].price,
                            rating: teaItems[index].rating,
                          )));
                },
                child: new Card(
                  elevation: 5.0,
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        child: Expanded(
                          child: new Image.asset(
                            teaItems[index].imgUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      new Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: new Text(teaItems[index].name),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
