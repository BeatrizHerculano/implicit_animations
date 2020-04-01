import 'package:flutter/material.dart';

class AnimatePosition extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AnimatePositionState();
}

class AnimatePositionState extends State<AnimatePosition> {
  double topValue = 10;
  double bottomValue = 340;
  bool top = true;
  String actionOnTop = 'Cair';
  String actionOnBot = 'Pular';

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Container(
          height: 400,
          child: AnimatedPadding(
            duration: Duration(seconds: 3),
            padding: EdgeInsets.only(top: topValue, bottom: bottomValue),
            curve: top ? Curves.bounceIn : Curves.bounceOut,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.red,
              ),
            ),
          ),
        ),
        Center(
          child: RaisedButton(
            child: Text(top ? actionOnTop : actionOnBot),
            onPressed: () {
              setState(() {
                top = !top;
                topValue = top ? 10 : 340;
                bottomValue = top ? 340 : 10;
              });
            },
          ),
        )
      ],
    ));
  }
}
