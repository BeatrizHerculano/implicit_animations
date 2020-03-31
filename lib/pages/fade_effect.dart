import 'package:flutter/material.dart';
import 'package:implicit_animation_examples/widgets/icon_card.dart';

class FadeEffect extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FadeEffectState();
}

class FadeEffectState extends State {
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fade In e FAde Out Exemplo"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 1500),
                curve: Curves.linear,
                child: IconCard(
                  qtt: 150.toString(),
                  title: "Tempo de Duração",
                  icon: Icon(
                    Icons.access_time,
                    size: 40,
                  ),
                ),
              ),
              Switch(
                  value: _visible,
                  onChanged: (value) {
                    setState(() {
                      _visible = value;
                    });
                  }),
            ],
          ),
        ));
  }
}
