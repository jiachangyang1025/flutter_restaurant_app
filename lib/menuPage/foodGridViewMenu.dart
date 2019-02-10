import 'package:flutter/material.dart';
import 'package:resturant_app_flutter/detailPage/detailPage.dart';
import 'package:resturant_app_flutter/model/food_items.dart';
import 'package:resturant_app_flutter/utils.dart/nameText.dart';

class FoodGridViewMenu extends StatefulWidget {
  @override
  _FoodGridViewMenuState createState() => _FoodGridViewMenuState();
}

class _FoodGridViewMenuState extends State<FoodGridViewMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text(menuPageFoodTitle),
          backgroundColor: Colors.orange[400],
        ),
        body: new GridView.builder(
            itemCount: foodItems.length,
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
                            name: foodItems[index].name,
                            imgUrl: foodItems[index].imgUrl,
                            price: foodItems[index].price,
                            rating: foodItems[index].rating,
                          )));
                },
                child: new Card(
                  elevation: 5.0,
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        child: Expanded(
                          child: new Image.asset(
                            foodItems[index].imgUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),                     
                      new Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: new Text(foodItems[index].name),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
