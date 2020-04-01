import 'package:flutter/material.dart';

class ColorAndSize extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ColorAndSizeState();
}

class ColorAndSizeState extends State<ColorAndSize> {
  bool color = true;
  double width = 100;
  double height = 100;
  int duration = 1000;

  double maxWidth = 500;
  double maxHeight = 500;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(30),
            child: AnimatedContainer(
              duration: Duration(milliseconds: duration),
              height: height,
              width: width,
              color: color ? Colors.blueAccent : Colors.deepPurple,
            )),
        Switch(
          value: color,
          onChanged: (value) {
            setState(() {
              duration = 1000;
              color = value;
            });
          },
          activeColor: Colors.blueAccent,
          inactiveThumbColor: Colors.deepPurple,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(
                Icons.add_circle,
                size: 30,
              ),
              backgroundColor: Colors.green,
              onPressed: () {
                setState(() {
                  width = width + 30;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'Largura',
                style: TextStyle(fontSize: 20),
              ),
            ),
            FloatingActionButton(
              child: Icon(
                Icons.remove_circle,
                size: 30,
              ),
              backgroundColor: Colors.red,
              onPressed: () {
                setState(() {
                  duration = 500;
                  double aux = width - 30;
                  if (aux > 10) {
                    width = aux;
                  } else {
                    width = 10;
                  }
                });
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(
                Icons.add_circle,
                size: 30,
              ),
              backgroundColor: Colors.green,
              onPressed: () {
                setState(() {
                  duration = 500;
                  double aux = height + 30;
                  if (aux < maxHeight) {
                    height = aux;
                  } else {
                    height = maxHeight;
                  }
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'Altura',
                style: TextStyle(fontSize: 20),
              ),
            ),
            FloatingActionButton(
              child: Icon(
                Icons.remove_circle,
                size: 30,
              ),
              backgroundColor: Colors.red,
              onPressed: () {
                setState(() {
                  duration = 500;
                  double aux = height - 30;
                  if (aux > 10) {
                    height = aux;
                  } else {
                    height = 10;
                  }
                });
              },
            ),
          ],
        )
      ],
    ));
  }
}
