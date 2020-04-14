import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemMenuBottomApp extends StatelessWidget {

  final IconData icon;
  final String text;

  const ItemMenuBottomApp({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: Container(
        width: 80,
        height: 30,
        decoration: BoxDecoration(
            color: Colors.white24, borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(icon),
              Text(
                text,
                style: TextStyle(color: Colors.white70),
              )
            ],
          ),
        ),
      ),
    );
  }
}
