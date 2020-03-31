import 'package:flutter/material.dart';

class IconCard extends StatefulWidget {
  IconCard(
      {Key key, @required this.title, @required this.qtt, @required this.icon})
      : super(key: key);

  final String title;
  final String qtt;
  final Icon icon;

  @override
  State<IconCard> createState() => BeautifulCardState();
}

class BeautifulCardState extends State<IconCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 200,
        child: Card(
            margin: EdgeInsets.all(10),
            elevation: 30,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Color.fromRGBO(253, 103, 103, 1),
            child: Stack(
              children: <Widget>[
                Positioned(
                    top: 8,
                    left: 14,
                    right: 3,
                    child: Text(
                      widget.qtt,
                      maxLines: 10,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 32,
                    left: 10,
                    right: 30,
                    child: Text(
                      widget.title,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                Positioned(
                    bottom: 0,
                    left: 0,
                    top: 82,
                    child: Container(
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(70),
                              topLeft: Radius.circular(40),
                              bottomRight: Radius.elliptical(10, 70)),
                          color: Colors.white),
                      child: Center(child: widget.icon),
                    ))
              ],
            )));
  }
}
