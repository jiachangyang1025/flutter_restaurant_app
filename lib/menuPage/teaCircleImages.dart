import 'package:flutter/material.dart';
import 'package:resturant_app_flutter/detailPage/detailPage.dart';
import 'package:resturant_app_flutter/model/tea_items.dart';
import 'package:resturant_app_flutter/utils.dart/colors.dart';

class TeaCircleImages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TeaCircleWidgets();
  }
}

class TeaCircleWidgets extends State<TeaCircleImages> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];

    for (int index = 0; index < 4; index++) {
      widgets.add(GestureDetector(
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (
              BuildContext context,
            ) => new DetailPage(
                          name: teaItems[index].name,
                          imgUrl: teaItems[index].imgUrl,
                          price: teaItems[index].price,
                          rating: teaItems[index].rating,
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
                      color: Color.fromARGB(20, 0, 0, 0),
                      blurRadius: 1.0,
                      offset: Offset(5.0, 5.0))
                ],
                border: Border.all(
                    width: 1.0,
                    style: BorderStyle.none,
                    color: Color.fromARGB(255, 0, 0, 0)),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(teaItems[index].imgUrl))),
            child: new Container(
              alignment: Alignment(0.0, 1.4),
              child: new Text(teaItems[index].name),
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
