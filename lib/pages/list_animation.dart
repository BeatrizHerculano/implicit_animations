import 'package:flutter/material.dart';

class ListAnimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListAnimationState();
}

class ListAnimationState extends State<ListAnimation> {
  List<String> myList = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  final listKey = GlobalKey<AnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List'),
      ),
      body: AnimatedList(
        key: listKey,
        itemBuilder: (context, index, animation) {
          return SizeTransition(
              sizeFactor: animation,
              child: ListTile(
                title: Text(myList[index]),
              ));
        },
        initialItemCount: myList.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          listKey.currentState
              .insertItem(0, duration: Duration(milliseconds: 300));
          myList = ['Item tal', ...myList];
        },
      ),
    );
  }
}
