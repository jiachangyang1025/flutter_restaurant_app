import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:resturant_app_flutter/aboutPage/aboutPage.dart';
import 'package:resturant_app_flutter/cartPage/cartPage.dart';
import 'package:resturant_app_flutter/favouritePage/favouritePage.dart';
import 'package:resturant_app_flutter/menuPage/menuPage.dart';
import 'package:resturant_app_flutter/newsPage/newsPage.dart';
import 'package:resturant_app_flutter/utils.dart/colors.dart';
import 'package:resturant_app_flutter/utils.dart/nameText.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class BottomNavPage extends StatefulWidget {
  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  
  PageController pageController;
  int page = 0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: new PageView(
          //disable swipe
          physics: new NeverScrollableScrollPhysics(),
          children: [
            new NewsPage(), 
            new MenuPage(), 
            new CartPage(), 
            new FavouritePage(),
            new AboutPage()],
          controller: pageController,
          onPageChanged: onPageChanged),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
        new BottomNavigationBarItem(
          icon: new Icon(FontAwesomeIcons.solidStar),
          title: new Text(bottomNavName1),
          backgroundColor: orangeColor,
        ),
        new BottomNavigationBarItem(
          icon: new Icon(FontAwesomeIcons.utensils),
          title: new Text(bottomNavName2),
          backgroundColor: orangeColor,
        ),
        new BottomNavigationBarItem(
          icon: new Icon(FontAwesomeIcons.cartPlus),
          title: new Text(bottomNavName3),
          backgroundColor: orangeColor,
        ),
        new BottomNavigationBarItem(
          icon: new Icon(FontAwesomeIcons.solidHeart),
          title: new Text(bottomNavName4),
          backgroundColor: orangeColor,
        ),
        new BottomNavigationBarItem(
          icon: new Icon(FontAwesomeIcons.userAlt),
          title: new Text(bottomNavName5),
          backgroundColor: orangeColor,
        ),
      ], onTap: onTap, currentIndex: page),
    );
  }

  @override
  void initState() {
    super.initState();
    //status bar color
    FlutterStatusbarcolor.setStatusBarColor(orangeColor);
    pageController = new PageController(initialPage: this.page);
  }

  void onTap(int index) {
    pageController.animateToPage(index,
    duration: const Duration(milliseconds: 10), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this.page = page;
    });
  }
}
