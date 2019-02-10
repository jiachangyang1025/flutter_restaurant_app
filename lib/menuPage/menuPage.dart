
import 'package:flutter/material.dart';
import 'package:resturant_app_flutter/menuPage/foodCircleImages.dart';
import 'package:resturant_app_flutter/menuPage/foodGridViewMenu.dart';
import 'package:resturant_app_flutter/menuPage/teaCircleImages.dart';
import 'package:resturant_app_flutter/menuPage/teaGridViewMenu.dart';
import 'package:resturant_app_flutter/model/food_items.dart';
import 'package:resturant_app_flutter/model/tea_items.dart';
import 'package:resturant_app_flutter/utils.dart/colors.dart';
import 'package:resturant_app_flutter/utils.dart/nameText.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(menuPageTitle),
          backgroundColor: Colors.orange[400],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    menuPageTeaTitle,
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new TeaGridViewMenu()));
                    },
                    child: new Text("See all (" + teaItems.length.toString() + ")",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: orangeColor,
                        )),
                  ),
                ],
              ),
            ),
            TeaCircleImages(),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    menuPageFoodTitle,
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new FoodGridViewMenu()));
                    },
                    child: new Text("See all (" + foodItems.length.toString() + ")",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: orangeColor,
                        )),
                  ),
                ],
              ),
            ),
            FoodCircleImages(),
            
          ],
        ));
  }
}





