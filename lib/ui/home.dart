import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:myapps/ui/satu.dart';
import 'package:myapps/ui/tiga.dart';

class HomeKu extends StatefulWidget {
  static String tag = 'home-page';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeKu> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(
              child: Sopir(),
            ),
            Container(
              // color: Colors.red,
              child: ListProduct(),
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 20,
        curve: Curves.easeIn,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              icon: Icon(Icons.apps_rounded),
              title: Text('Home'),
              activeColor: Colors.lightBlue,
              textAlign: TextAlign.center),
          BottomNavyBarItem(
              icon: Icon(Icons.favorite_rounded),
              title: Text('Favorit'),
              activeColor: Colors.lightBlue,
              textAlign: TextAlign.center),
          BottomNavyBarItem(
              icon: Icon(Icons.message_rounded),
              title: Text('Chat'),
              activeColor: Colors.lightBlue,
              textAlign: TextAlign.center),
          BottomNavyBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Profil'),
              activeColor: Colors.lightBlue,
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
