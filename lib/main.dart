import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoApp(title: 'Aya', home: MyHomePage())
        : MaterialApp(
            title: 'Aya',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: MyHomePage(),
          );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 20,
                  left: 40,
                  right: 30),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Planets',
                        style: TextStyle(
                            fontFamily: 'WorkSansMedium',
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Solar system',
                        style: TextStyle(
                            fontFamily: 'WorkSansMedium',
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 24,
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FontAwesomeIcons.search,
                        color: Colors.grey,
                        size: 22,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.47,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                      ),
                      planetCard('sun'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard('mercury'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard('venus'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard('earth'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard('moon'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard('mars'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard('jupiter'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard('saturn'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard('uranus'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard('neptune'),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 40, right: 35),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.06,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.globe,
                          size: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                        ),
                        Icon(
                          FontAwesomeIcons.leaf,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ],
                    ),
                    Icon(
                      FontAwesomeIcons.chevronRight,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                      ),
                      planetCardSmall('jupiter'),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall('venus'),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall('earth'),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall('mercury'),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall('saturn'),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall('uranus'),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall('mars'),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall('sun'),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall('neptune'),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall('moon'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget planetCardSmall(String planetName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(227, 104, 115, 1),
                Color.fromRGBO(251, 232, 193, 1),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            borderRadius: BorderRadius.circular(200),
          ),
          child: Image.asset(
            'assets/images/$planetName.png',
            scale: 9,
          ),
        ),
        Text(
          planetName.replaceFirst(planetName[0], planetName[0].toUpperCase()),
          style: TextStyle(fontFamily: 'WorkSansMedium', fontSize: 18),
        ),
      ],
    );
  }

  Widget planetCard(String planetName) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.47,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(251, 232, 193, 1),
              Color.fromRGBO(227, 104, 115, 1),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Colors.red,
        ),
        child: Hero(
          tag: planetName,
          child: Image.asset(
            'assets/images/$planetName.png',
          ),
        ),
      ),
    );
  }
}
