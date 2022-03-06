import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:teamang_hackathon/near_me.dart';
import 'package:teamang_hackathon/profile.dart';
import 'package:teamang_hackathon/upperdata.dart';

import 'explore.dart';

class HomePageFinal extends StatefulWidget {
  HomePageFinal({Key? key}) : super(key: key);

  @override
  _HomePageFinalState createState() => _HomePageFinalState();
}

class _HomePageFinalState extends State<HomePageFinal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 40,
              ),
            ),
            title: Text(
              'Welcome Back, Juan!',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                UpperData(),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  margin: EdgeInsets.fromLTRB(20.0, 10, 20, 10),
                  elevation: 10,
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          // Image border
                          child: SizedBox.fromSize(
                            size: Size(MediaQuery.of(context).size.width,
                                80), // Image radius
                            child: Image.network(
                                'https://images-prod.healthline.com/hlcmsresource/images/AN_images/tomatoes-1296x728-feature.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
                          child: Text(
                            'Share your food',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Donate every month and match with families that need your help. You can make a difference.',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            minimumSize: Size(120, 40),
                            backgroundColor: Colors.blue[900],
                            onSurface: Colors.grey,
                          ),
                          onPressed: () {},
                          child: Text('Donate Now'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
