import 'package:flutter/material.dart';

class ShapeAnimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ShapeAnimationState();
}

class ShapeAnimationState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fade In e FAde Out Exemplo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(30),
              child: Center(
                child: Text(
                  'oi',
                  style: TextStyle(fontSize: 40),
                ),
              ))
        ],
      ),
    );
  }
}
