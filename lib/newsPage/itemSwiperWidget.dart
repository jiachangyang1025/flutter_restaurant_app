
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:resturant_app_flutter/model/tea_items.dart';

class ItemSwiper extends StatefulWidget {
  @override
  _ItemSwiperState createState() => _ItemSwiperState();
}

class _ItemSwiperState extends State<ItemSwiper> {

  @override
  Widget build(BuildContext context) {
    return 
      new Container(
          color: Colors.grey[200],
          height: 290.0,
          child: new Swiper(
            itemBuilder: (BuildContext context, int index) {
              return new Image.asset(
                teaItems[index].imgUrl,
                fit: BoxFit.fitWidth,
              );
            },
            itemCount: teaItems.length,
            itemWidth: 300.0,
            layout: SwiperLayout.STACK,
            autoplay: true,
            pagination: new SwiperPagination(
                margin: new EdgeInsets.all(10.0),
                builder: new SwiperCustomPagination(
                    builder: (BuildContext context, SwiperPluginConfig config) {
                  return new ConstrainedBox(
                    child: new Container(
                        color: Color(0x00000000),
                        child: new Text(
                          "${teaItems[config.activeIndex].name}",
                          style: new TextStyle(
                              fontSize: 20.0, fontFamily: 'Stocky'),
                          textDirection: TextDirection.rtl,
                        )),
                    constraints: new BoxConstraints.expand(height: 50.0),
                  );
                })),
          ),
    );
  }
}

