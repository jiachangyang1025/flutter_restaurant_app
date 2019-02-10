import 'package:flutter/material.dart';
import 'package:resturant_app_flutter/detailPage/detailPage.dart';
import 'package:resturant_app_flutter/model/food_items.dart';
import 'package:resturant_app_flutter/utils.dart/colors.dart';

class FoodCircleImages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FoodCircleWidgets();
  }
}

class FoodCircleWidgets extends State<FoodCircleImages> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];

    for (int index = 0; index < 4; index++) {
      widgets.add(new GestureDetector(
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
          child: Container(
            height: 400.0,
            width: 150.0,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150.0),
                boxShadow: [
                  new BoxShadow(
                      color: Color.fromARGB(25, 0, 0, 0),
                      blurRadius: 5.0,
                      offset: Offset(5.0, 5.0))
                ],
                border: Border.all(
                    width: 2.0,
                    style: BorderStyle.none,
                    color: Color.fromARGB(255, 0, 0, 0)),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(foodItems[index].imgUrl))),
            child: new Container(
              alignment: Alignment(0.0, 1.4),
              child: new Text(foodItems[index].name),
            ),
          )));
    }
    return Container(
        height: 200.0,
        color: greyColor,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(20.0),
          children: widgets,
        ));
  }
}
