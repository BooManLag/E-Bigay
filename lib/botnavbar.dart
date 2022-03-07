import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:teamang_hackathon/convo.dart';
import 'package:teamang_hackathon/explore_free_non.dart';
import 'package:teamang_hackathon/messages.dart';
import 'package:teamang_hackathon/profile.dart';
import 'package:teamang_hackathon/share.dart';

import 'explore.dart';
import 'home.dart';
import 'near_me.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({Key? key}) : super(key: key);

  @override
  _BotNavBarState createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  List<Widget> pageList = <Widget>[
    HomePageFinal(),
    NearMe(),
    Explore(),
    Profile(),
    Messages(),
  ];
  int _page = 0;

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pageList[_page],
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.house, size: 30),
            Icon(Icons.pin_drop, size: 30),
            Icon(Icons.find_in_page, size: 30),
            Icon(Icons.perm_identity, size: 30),
            Icon(Icons.message, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.yellow,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}
