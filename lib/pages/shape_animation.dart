import 'package:flutter/material.dart';
import 'package:implicit_animation_examples/widgets/alignment.dart';
import 'package:implicit_animation_examples/widgets/color_and_size.dart';

class ShapeAnimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ShapeAnimationState();
}

class ShapeAnimationState extends State {
  bool color = true;
  double width = 100;
  double height = 100;
  double maxWidth = 500;
  double maxHeight = 500;
  int duration = 1000;

  final List<Tab> tabs = [
    Tab(
      text: 'Bouncing Up and Down',
    ),
    Tab(
      text: 'Shapeshifting',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Animate Shape'),
              bottom: TabBar(
                tabs: tabs,
              ),
            ),
            body: TabBarView(children: [
              AnimatePosition(),
              ColorAndSize(),
            ])));
  }
}
