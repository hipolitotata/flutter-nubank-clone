import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DotsApp extends StatelessWidget {
  final double top;
  final int currentIndex;

  const DotsApp({Key key, this.top, this.currentIndex}) : super(key: key);

  Color getColor(int index) {
    return index == currentIndex ? Colors.white : Colors.white30;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
      top: top,
      child: Row(
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            width: 7,
            height: 7,
            decoration:
                BoxDecoration(color: getColor(0), shape: BoxShape.circle),
          ),
          SizedBox(width: 5),
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            width: 7,
            height: 7,
            decoration:
                BoxDecoration(color: getColor(1), shape: BoxShape.circle),
          ),
          SizedBox(width: 5),
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            width: 7,
            height: 7,
            decoration:
                BoxDecoration(color: getColor(2), shape: BoxShape.circle),
          )
        ],
      ),
    );
  }
}
