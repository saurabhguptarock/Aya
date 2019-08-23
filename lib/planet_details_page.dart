import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlanetDetails extends StatefulWidget {
  final String planetName;
  final Color color1;
  final Color color2;
  final String planetType;
  final String diameter;
  final String description;
  PlanetDetails(
      {this.planetName,
      this.color1,
      this.color2,
      this.planetType,
      this.diameter,
      this.description});

  @override
  _PlanetDetailsState createState() => _PlanetDetailsState();
}

class _PlanetDetailsState extends State<PlanetDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 247, 226, 1),
      body: Stack(
        children: <Widget>[
          CustomPaint(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            painter: CurvePainter(color1: widget.color1, color2: widget.color2),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 30,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                  Icon(
                    FontAwesomeIcons.ellipsisH,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.5),
            child: Hero(
              tag: widget.planetName,
              child: Image.asset(
                'assets/images/${widget.planetName}.png',
                height: 270,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .55,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 40, right: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.planetName.replaceFirst(widget.planetName[0],
                        widget.planetName[0].toUpperCase()),
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'WorkSansMedium',
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset('assets/images/planetType.png'),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                          ),
                          Text(
                            widget.planetType.toUpperCase(),
                            style: TextStyle(
                                fontSize: 19,
                                fontFamily: 'WorkSansMedium',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset('assets/images/diameter.png'),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                          ),
                          Text(
                            widget.diameter.toUpperCase(),
                            style: TextStyle(
                                fontSize: 19,
                                fontFamily: 'WorkSansMedium',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'WorkSansMedium',
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 205, 145, 1),
                        ),
                      ),
                      Text(
                        'VR Tour',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'WorkSansMedium',
                            color: Colors.grey),
                      ),
                      Text(
                        'Map',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'WorkSansMedium',
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                  ),
                  Text(
                    widget.description,
                    style: TextStyle(
                        fontFamily: 'WorkSansMedium',
                        color: Colors.grey,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  final Color color1;
  final Color color2;
  CurvePainter({this.color1, this.color2});

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = new Rect.fromCircle(
      center: new Offset(165.0, 55.0),
      radius: 180.0,
    );

    // a fancy rainbow gradient
    final Gradient gradient = new LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: <Color>[this.color1, this.color2],
    );
    Path path = Path();
    Paint paint = Paint()..shader = gradient.createShader(rect);

    path.lineTo(0, size.height * 0.45);
    path.quadraticBezierTo(70, size.height, size.width * .5, size.height);
    path.quadraticBezierTo(
        size.width * .6, size.height * .9, size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = this.color1;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return null;
  }
}
