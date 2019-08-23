import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'planet_details_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoApp(
            title: 'Aya',
            home: MyHomePage(),
          )
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
      backgroundColor: Color.fromRGBO(255, 247, 226, 1),
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
                      planetCard(
                          'sun',
                          Color.fromRGBO(239, 178, 92, 1),
                          Color.fromRGBO(229, 107, 20, 1),
                          'Solid',
                          '1,391,000 km',
                          'The Sun is the star at the center of the Solar System. It is a nearly perfect sphere of hot plasma.'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard(
                          'mercury',
                          Color.fromRGBO(223, 181, 147, 1),
                          Color.fromRGBO(184, 117, 79, 1),
                          'Solid',
                          '4,879 km',
                          'Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 87.97 days is the shortest of all the planets in the Solar System.'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard(
                          'venus',
                          Color.fromRGBO(233, 202, 115, 1),
                          Color.fromRGBO(180, 101, 39, 1),
                          'Solid',
                          '12,104 km',
                          'Venus is the second planet from the Sun, orbiting it every 224.7 Earth days.'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard(
                          'earth',
                          Color.fromRGBO(0, 209, 230, 1),
                          Color.fromRGBO(0, 129, 186, 1),
                          'Solid',
                          '12,742 km',
                          'Earth is the third planet from the Sun and the fifth largest. Earth is the only planet whose English name does not derive from Greek/Roman mythology.'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard(
                          'moon',
                          Color.fromRGBO(220, 217, 225, 1),
                          Color.fromRGBO(79, 86, 92, 1),
                          'Solid',
                          '3,474 km',
                          "Earth's Moon is an astronomical body that orbits the planet and acts as its only permanent natural satellite."),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard(
                          'mars',
                          Color.fromRGBO(251, 98, 82, 1),
                          Color.fromRGBO(159, 0, 0, 1),
                          'Solid',
                          '6,779 km',
                          'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System after Mercury.'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard(
                          'jupiter',
                          Color.fromRGBO(233, 153, 69, 1),
                          Color.fromRGBO(218, 81, 7, 1),
                          'Gas',
                          '139,830 km',
                          'Jupiter is the fifth planet from the Sun and the largest in the Solar System.'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard(
                          'saturn',
                          Color.fromRGBO(199, 109, 104, 1),
                          Color.fromRGBO(155, 63, 60, 1),
                          'Solid',
                          '116,460 km',
                          'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard(
                          'uranus',
                          Color.fromRGBO(28, 178, 240, 1),
                          Color.fromRGBO(20, 71, 158, 1),
                          'Solid',
                          '50,724 km',
                          'Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System.'),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      planetCard(
                          'neptune',
                          Color.fromRGBO(146, 209, 251, 1),
                          Color.fromRGBO(20, 92, 225, 1),
                          'Solid',
                          '49,244 km',
                          'Neptune is the eighth and farthest known planet from the Sun in the Solar System. '),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 40, right: 35),
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
                      planetCardSmall(
                        'jupiter',
                        Color.fromRGBO(218, 81, 7, 1),
                        Color.fromRGBO(233, 153, 69, 1),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall(
                        'venus',
                        Color.fromRGBO(180, 101, 39, 1),
                        Color.fromRGBO(233, 202, 115, 1),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall(
                        'earth',
                        Color.fromRGBO(0, 129, 186, 1),
                        Color.fromRGBO(0, 209, 230, 1),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall(
                        'mercury',
                        Color.fromRGBO(184, 117, 79, 1),
                        Color.fromRGBO(223, 181, 147, 1),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall(
                        'saturn',
                        Color.fromRGBO(155, 63, 60, 1),
                        Color.fromRGBO(199, 109, 104, 1),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall(
                        'uranus',
                        Color.fromRGBO(20, 71, 158, 1),
                        Color.fromRGBO(28, 178, 240, 1),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall(
                        'mars',
                        Color.fromRGBO(159, 0, 0, 1),
                        Color.fromRGBO(251, 98, 82, 1),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall(
                        'sun',
                        Color.fromRGBO(229, 107, 20, 1),
                        Color.fromRGBO(239, 178, 92, 1),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall(
                        'neptune',
                        Color.fromRGBO(20, 92, 225, 1),
                        Color.fromRGBO(146, 209, 251, 1),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      planetCardSmall(
                        'moon',
                        Color.fromRGBO(79, 86, 92, 1),
                        Color.fromRGBO(220, 217, 225, 1),
                      ),
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

  Widget planetCardSmall(String planetName, Color color1, Color color2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color2, color1],
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

  Widget planetCard(String planetName, Color color1, Color color2,
      String planetType, String diameter, String description) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) => PlanetDetails(
            planetName: planetName,
            color1: color1,
            color2: color2,
            planetType: planetType,
            diameter: diameter,
            description: description,
          ),
        ),
      ),
      child: Card(
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
              colors: [color1, color2],
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
      ),
    );
  }
}
