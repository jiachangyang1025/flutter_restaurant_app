import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resturant_app_flutter/utils.dart/colors.dart';
import 'package:resturant_app_flutter/utils.dart/nameText.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class DetailPage extends StatefulWidget {
  final String name;
  final String imgUrl;
  final double price;
  final double rating;

  DetailPage({
    this.name,
    this.imgUrl,
    this.price,
    this.rating,
  });

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  ScrollController _scrollController;
  bool _dialVisible = true;

  initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        _setDialVisible(_scrollController.position.userScrollDirection ==
            ScrollDirection.forward);
      });
  }

  _setDialVisible(bool value) {
    setState(() {
      _dialVisible = value;
    });
  }

  _floatingActionButton() {
    return SpeedDial(
      elevation: 5.0,
      backgroundColor: orangeColor,
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22.0, color: whiteColor),
      visible: _dialVisible,
      curve: Curves.ease,
      children: [
        SpeedDialChild(
          child: Icon(FontAwesomeIcons.cartPlus, color: Colors.white),
          backgroundColor: Colors.red,
          onTap: () {
            
          },
          label: 'Buy',
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
        ),
        SpeedDialChild(
          child: Icon(Icons.favorite, color: Colors.white),
          backgroundColor: Colors.red,
          onTap: (){

          },
          label: 'Favourite',
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _floatingActionButton(),
      body: CustomScrollView(controller: _scrollController, slivers: <Widget>[
        SliverAppBar(
          backgroundColor: orangeColor,
          pinned: true,
          expandedHeight: 300.0,
          forceElevated: true,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            title: Text(widget.name),
            centerTitle: true,
            background: Image.asset(widget.imgUrl, fit: BoxFit.fill),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              padding: EdgeInsets.all(15.0),
              color: whiteColor,
              height: 150.0,
              child: Text(description),
            ),
            Divider(
              indent: 15.0,
              height: 1.0,
              color: blackColor,
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              color: whiteColor,
              height: 150.0,
              child: Text(description),
            ),
            Divider(
              indent: 15.0,
              height: 1.0,
              color: blackColor,
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              color: whiteColor,
              height: 150.0,
              child: Text(description),
            ),
            Divider(
              indent: 15.0,
              height: 1.0,
              color: blackColor,
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              color: whiteColor,
              height: 150.0,
              child: Text(description),
            ),
          ]),
        )
      ]),
    );
  }
}
