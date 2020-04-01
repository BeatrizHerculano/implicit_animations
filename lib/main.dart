import 'package:flutter/material.dart';
import 'package:implicit_animation_examples/pages/fade_effect.dart';
import 'package:implicit_animation_examples/pages/list_animation.dart';
import 'package:implicit_animation_examples/pages/shape_animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => MyHomePage(title: 'Flutter Demo Home Page'),
        "/Fade": (context) => FadeEffect(),
        "/Shape": (context) => ShapeAnimation(),
        "/List": (context) => ListAnimation(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                color: Colors.deepOrangeAccent,
                onPressed: () => {Navigator.of(context).pushNamed("/Fade")},
                child: Text("Fade In and Out")),
            FlatButton(
                color: Colors.blueAccent,
                onPressed: () => {Navigator.of(context).pushNamed("/Shape")},
                child: Text("Animate Shape")),
            FlatButton(
                color: Colors.blueAccent,
                onPressed: () => {Navigator.of(context).pushNamed("/List")},
                child: Text("Animated List"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
